import os
import pathlib
import subprocess

from talon import (
    Module,
    actions,
    app,
    clip,
    cron,
    ctrl,
    imgui,
    noise,
    ui,
)
from talon_plugins import eye_mouse, eye_zoom_mouse
from talon_plugins.eye_mouse import config, toggle_camera_overlay, toggle_control
from time import sleep, time

key = actions.key
self = actions.self
scroll_amount = 0
click_job = None
scroll_job = None
gaze_job = None
cancel_scroll_on_pop = True
control_mouse_forced = False
sleep_time = 0.30

default_cursor = {
    "AppStarting": r"%SystemRoot%\Cursors\aero_working.ani",
    "Arrow": r"%SystemRoot%\Cursors\aero_arrow.cur",
    "Hand": r"%SystemRoot%\Cursors\aero_link.cur",
    "Help": r"%SystemRoot%\Cursors\aero_helpsel.cur",
    "No": r"%SystemRoot%\Cursors\aero_unavail.cur",
    "NWPen": r"%SystemRoot%\Cursors\aero_pen.cur",
    "Person": r"%SystemRoot%\Cursors\aero_person.cur",
    "Pin": r"%SystemRoot%\Cursors\aero_pin.cur",
    "SizeAll": r"%SystemRoot%\Cursors\aero_move.cur",
    "SizeNESW": r"%SystemRoot%\Cursors\aero_nesw.cur",
    "SizeNS": r"%SystemRoot%\Cursors\aero_ns.cur",
    "SizeNWSE": r"%SystemRoot%\Cursors\aero_nwse.cur",
    "SizeWE": r"%SystemRoot%\Cursors\aero_ew.cur",
    "UpArrow": r"%SystemRoot%\Cursors\aero_up.cur",
    "Wait": r"%SystemRoot%\Cursors\aero_busy.ani",
    "Crosshair": "",
    "IBeam": "",
}

# todo figure out why notepad++ still shows the cursor sometimes.
hidden_cursor = os.path.join(
    os.path.dirname(os.path.realpath(__file__)), r"Resources\HiddenCursor.cur"
)

mod = Module()
mod.list(
    "mouse_button", desc="List of mouse button words to mouse_click index parameter"
)
setting_mouse_enable_pop_click = mod.setting(
    "mouse_enable_pop_click",
    type=int,
    default=0,
    desc="Enable pop to click when control mouse is enabled.",
)
setting_mouse_enable_pop_stops_scroll = mod.setting(
    "mouse_enable_pop_stops_scroll",
    type=int,
    default=0,
    desc="When enabled, pop stops continuous scroll modes (wheel upper/downer/gaze)",
)
setting_mouse_wake_hides_cursor = mod.setting(
    "mouse_wake_hides_cursor",
    type=int,
    default=0,
    desc="When enabled, mouse wake will hide the cursor. mouse_wake enables zoom mouse.",
)
setting_mouse_hide_mouse_gui = mod.setting(
    "mouse_hide_mouse_gui",
    type=int,
    default=0,
    desc="When enabled, the 'Scroll Mouse' GUI will not be shown.",
)
setting_mouse_continuous_scroll_amount = mod.setting(
    "mouse_continuous_scroll_amount",
    type=int,
    default=80,
    desc="The default amount used when scrolling continuously",
)
setting_mouse_wheel_down_amount = mod.setting(
    "mouse_wheel_down_amount",
    type=int,
    default=120,
    desc="The amount to scroll up/down (equivalent to mouse wheel on Windows by default)",
)

# My Additions
setting_mouse_pop_key = mod.setting(
    "mouse_pop_key",
    type=str,
    default="right",
    desc="decides which key pop uses when mouse control is off",
)

setting_hiss_toggle = mod.setting(
    "hiss_toggle",
    type=int,
    default=0,
    desc="decides whether or not quick toggle mouse for hiss is on",
)

setting_mouse_pop_hold = mod.setting(
    "mouse_pop_hold",
    type=int,
    default=0,
    desc="decides on how much to hold the mouse click",
)

setting_hiss_threshold = mod.setting(
    "hiss_threshold",
    type=int,
    default=0,
    desc="defines how long you must hiss in milliseconds before the hiss triggers",
)

continuous_scoll_mode = ""
hiss_mouse = False

@imgui.open(x=700, y=0)
def gui_wheel(gui: imgui.GUI):
    gui.text("Scroll mode: {}".format(continuous_scoll_mode))
    gui.line()
    if gui.button("Wheel Stop [stop scrolling]"):
        actions.user.mouse_scroll_stop()


@mod.action_class
class Actions:
    def mouse_show_cursor():
        """Shows the cursor"""
        show_cursor_helper(True)

    def mouse_hide_cursor():
        """Hides the cursor"""
        show_cursor_helper(False)

    def mouse_wake():
        """Enable control mouse, zoom mouse, and disables cursor"""
        eye_zoom_mouse.toggle_zoom_mouse(True)
        # eye_mouse.control_mouse.enable()
        if setting_mouse_wake_hides_cursor.get() >= 1:
            show_cursor_helper(False)

    def mouse_calibrate():
        """Start calibration"""
        eye_mouse.calib_start()

    def mouse_toggle_control_mouse():
        """Toggles control mouse"""
        
        actions.user.disable_hiss_mouse()

        # disable zoom mouse automatically if its on
        if eye_zoom_mouse.zoom_mouse.enabled:
            eye_zoom_mouse.toggle_zoom_mouse(not eye_zoom_mouse.zoom_mouse.enabled)

        toggle_control(not config.control_mouse)

    def mouse_toggle_camera_overlay():
        """Toggles camera overlay"""
        toggle_camera_overlay(not config.show_camera)

    def mouse_toggle_zoom_mouse():
        """Toggles zoom mouse"""
        
        actions.user.disable_hiss_mouse()
        # disable direct mouse automatically if its onf
        if config.control_mouse:
            toggle_control(not config.control_mouse)

        eye_zoom_mouse.toggle_zoom_mouse(not eye_zoom_mouse.zoom_mouse.enabled)

    def mouse_cancel_zoom_mouse():
        """Cancel zoom mouse if pending"""
        if (
            eye_zoom_mouse.zoom_mouse.enabled
            and eye_zoom_mouse.zoom_mouse.state != eye_zoom_mouse.STATE_IDLE
        ):
            eye_zoom_mouse.zoom_mouse.cancel()

    def mouse_trigger_zoom_mouse():
        """Trigger zoom mouse if enabled"""
        if eye_zoom_mouse.zoom_mouse.enabled:
            eye_zoom_mouse.zoom_mouse.on_pop(eye_zoom_mouse.zoom_mouse.state)

    def mouse_drag(button: int):
        """Press and hold/release a specific mouse button for dragging"""
        # Clear any existing drags
        self.mouse_drag_end()

        # Start drag
        ctrl.mouse_click(button=button, down=True)

    def mouse_drag_end():
        """ Releases any held mouse buttons """
        buttons_held_down = list(ctrl.mouse_buttons_down())
        for button in buttons_held_down:
            ctrl.mouse_click(button=button, up=True)

    def mouse_sleep():
        """Disables control mouse, zoom mouse, and re-enables cursor"""
        eye_zoom_mouse.toggle_zoom_mouse(False)
        actions.user.disable_hiss_mouse()
        toggle_control(False)
        show_cursor_helper(True)
        stop_scroll()

        # todo: fixme temporary fix for drag command
        button_down = len(list(ctrl.mouse_buttons_down())) > 0
        if button_down:
            ctrl.mouse_click(button=0, up=True)

    def mouse_scroll_down():
        """Scrolls down"""
        mouse_scroll(setting_mouse_wheel_down_amount.get())()

    def mouse_scroll_down_continuous():
        """Scrolls down continuously"""
        global continuous_scoll_mode
        continuous_scoll_mode = "scroll down continuous"
        mouse_scroll(setting_mouse_continuous_scroll_amount.get())()

        if scroll_job is None:
            start_scroll()

        if setting_mouse_hide_mouse_gui.get() == 0:
            gui_wheel.show()

    def mouse_scroll_up():
        """Scrolls up"""
        mouse_scroll(-setting_mouse_wheel_down_amount.get())()

    def mouse_scroll_up_continuous():
        """Scrolls up continuously"""
        global continuous_scoll_mode
        continuous_scoll_mode = "scroll up continuous"
        mouse_scroll(-setting_mouse_continuous_scroll_amount.get())()

        if scroll_job is None:
            start_scroll()
        if setting_mouse_hide_mouse_gui.get() == 0:
            gui_wheel.show()

    def mouse_scroll_stop():
        """Stops scrolling"""
        stop_scroll()

    def mouse_gaze_scroll():
        """Starts gaze scroll"""
        global continuous_scoll_mode
        continuous_scoll_mode = "gaze scroll"

        start_cursor_scrolling()
        if setting_mouse_hide_mouse_gui.get() == 0:
            gui_wheel.show()

        # enable 'control mouse' if eye tracker is present and not enabled already
        global control_mouse_forced
        if eye_mouse.tracker is not None and not config.control_mouse:
            toggle_control(True)
            control_mouse_forced = True

    def copy_mouse_position():
        """Copy the current mouse position coordinates"""
        position = ctrl.mouse_pos()
        clip.set_text((repr(position)))

    def mouse_move_center_active_window():
        """move the mouse cursor to the center of the currently active window"""
        rect = ui.active_window().rect
        ctrl.mouse_move(rect.left + (rect.width / 2), rect.top + (rect.height / 2))
    
    # additions
    def kingfisher_click(times: int):
        """Activates the eyetracker for a brief second to move the mouse, then clicks the targeted area N times, and returns the mouse back to where it was"""
        pos = ctrl.mouse_pos()
        
        actions.user.enable_tracker_mouse()
        actions.sleep(sleep_time)
        actions.user.disable_tracker_mouse()
        
        for i in range(times):
            ctrl.mouse_click(0)
        
        ctrl.mouse_move(pos[0], pos[1])

    def warp_mouse():
        """Activates the eyetracker for a brief second to move the mouse"""
        pos = ctrl.mouse_pos()
        
        actions.user.enable_tracker_mouse()
        actions.sleep(sleep_time)
        actions.user.disable_tracker_mouse()

    def enable_tracker_mouse():
        """Enables eyetracking"""
        actions.user.mouse_toggle_control_mouse()
        
    def disable_tracker_mouse():
        """Disables eyetracking"""
        actions.user.mouse_toggle_control_mouse()

    def disable_hiss_mouse():
        """disable hiss mouse"""
        global hiss_mouse
        hiss_mouse = False

    def mouse_toggle_hiss_mouse():
        """Toggles hiss mouse"""
        # TODO: better way to hold check
        global hiss_mouse
        hiss_mouse = not hiss_mouse
        print(hiss_mouse)

        # disable zoom mouse automatically if its on
        if eye_zoom_mouse.zoom_mouse.enabled:
            eye_zoom_mouse.toggle_zoom_mouse(not eye_zoom_mouse.zoom_mouse.enabled)

        if not config.control_mouse:
            toggle_control(True)


def show_cursor_helper(show):
    """Show/hide the cursor"""
    if app.platform == "windows":
        import ctypes
        import winreg

        import win32con

        try:
            Registrykey = winreg.OpenKey(
                winreg.HKEY_CURRENT_USER, r"Control Panel\Cursors", 0, winreg.KEY_WRITE
            )

            for value_name, value in default_cursor.items():
                if show:
                    winreg.SetValueEx(
                        Registrykey, value_name, 0, winreg.REG_EXPAND_SZ, value
                    )
                else:
                    winreg.SetValueEx(
                        Registrykey, value_name, 0, winreg.REG_EXPAND_SZ, hidden_cursor
                    )

            winreg.CloseKey(Registrykey)

            ctypes.windll.user32.SystemParametersInfoA(
                win32con.SPI_SETCURSORS, 0, None, 0
            )

        except WindowsError:
            print("Unable to show_cursor({})".format(str(show)))
    else:
        ctrl.cursor_visible(show)


#
# NOTE: Need to toggle the mouse control twice unsaved changes
#
def on_pop(active):
    print("you popped")
    print(setting_mouse_pop_key.get())

    if setting_mouse_enable_pop_stops_scroll.get() >= 1 and (gaze_job or scroll_job):
        stop_scroll()
    elif (
        not eye_zoom_mouse.zoom_mouse.enabled
        and eye_mouse.mouse.attached_tracker is not None
    ):
        if setting_mouse_enable_pop_click.get() >= 1:
            if setting_mouse_pop_hold.get() >= 1:
                # sometimes, like loop hero, talon clicks too fast for an application to register it
                ctrl.mouse_click(button=0, down=True) 
                actions.sleep(f"{setting_mouse_pop_hold.get()}ms")
                ctrl.mouse_click(button=0, down=False)
            else:
                ctrl.mouse_click(button=0) 

                
    # so during zoom mouse we don't trigger this
    elif eye_mouse.mouse.attached_tracker is None:
        key = setting_mouse_pop_key.get()
        if key in ["0", "1"]:
            ctrl.mouse_click(button=int(key)) 
        else:
            actions.key(key)


noise.register("pop", on_pop)

#
# Hissing
# 
@mod.action_class
class HissActions:
    def hiss_activate():
        """hiss is active"""
        # actions.user.mouse_drag(0)
        actions.user.mouse_toggle_control_mouse()


    def hiss_deactivate():
        """hiss has ended"""
        # actions.user.mouse_drag_end()
        pass


running = False
threshold_passed = False

def get_hiss_threshold():
    global hiss_mouse
    if hiss_mouse:
        return 600
    else:   
        return setting_hiss_threshold.get() 

def still_running():
    global running
    global threshold_passed
    if running:
        threshold_passed = True
        hiss_work(True)
        print('hiss duration passed threshold, hiss=active')

def on_hiss(is_active):
    global running
    global threshold_passed
    if is_active:
        running = True
        cron.after(f'{get_hiss_threshold()}ms', still_running)
    else:
        running = False
        if threshold_passed:
            threshold_passed = False
            hiss_work(False)
            print('end of hiss detected, hiss=not active')

def hiss_work(active):
    # zoom mouse override
    # print("hiss work")
    if eye_zoom_mouse.zoom_mouse.enabled:
        # print("zoom mouse enabled")
        if (eye_mouse.mouse.attached_tracker is not None and active):
            # changing the default didn't make it go faster. only adding more function calls
            actions.user.mouse_scroll_up_continuous()
            actions.user.mouse_scroll_up_continuous()
            actions.user.mouse_scroll_up_continuous()
            actions.user.mouse_scroll_up_continuous()
            actions.user.mouse_scroll_up_continuous()
            actions.user.mouse_scroll_up_continuous()
            actions.user.mouse_scroll_up_continuous()
        else:
            actions.user.mouse_scroll_stop()
    elif eye_mouse.mouse.attached_tracker and hiss_mouse and active:
        ctrl.mouse_click(0)
    else:
        if setting_hiss_toggle.get() == 1:
            if active:
                actions.user.hiss_activate()
            else:
                actions.user.hiss_deactivate()
        
noise.register('hiss', on_hiss)


def mouse_scroll(amount):
    def scroll():
        global scroll_amount
        if (scroll_amount >= 0) == (amount >= 0):
            scroll_amount += amount
        else:
            scroll_amount = amount
        actions.mouse_scroll(y=int(amount))

    return scroll


def scroll_continuous_helper():
    global scroll_amount
    # print("scroll_continuous_helper")
    if scroll_amount and (
        eye_zoom_mouse.zoom_mouse.state == eye_zoom_mouse.STATE_IDLE
    ):  # or eye_zoom_mouse.zoom_mouse.state == eye_zoom_mouse.STATE_SLEEP):
        actions.mouse_scroll(by_lines=False, y=int(scroll_amount / 10))


def start_scroll():
    global scroll_job
    scroll_job = cron.interval("60ms", scroll_continuous_helper)
    # if eye_zoom_mouse.zoom_mouse.enabled and eye_mouse.mouse.attached_tracker is not None:
    #    eye_zoom_mouse.zoom_mouse.sleep(True)


def gaze_scroll():
    # print("gaze_scroll")
    if (
        eye_zoom_mouse.zoom_mouse.state == eye_zoom_mouse.STATE_IDLE
    ):  # or eye_zoom_mouse.zoom_mouse.state == eye_zoom_mouse.STATE_SLEEP:
        x, y = ctrl.mouse_pos()

        # the rect for the window containing the mouse
        rect = None

        # on windows, check the active_window first since ui.windows() is not z-ordered
        if app.platform == "windows" and ui.active_window().rect.contains(x, y):
            rect = ui.active_window().rect
        else:
            windows = ui.windows()
            for w in windows:
                if w.rect.contains(x, y):
                    rect = w.rect
                    break

        if rect is None:
            # print("no window found!")
            return

        midpoint = rect.y + rect.height / 2
        amount = int(((y - midpoint) / (rect.height / 10)) ** 3)
        actions.mouse_scroll(by_lines=False, y=amount)

    # print(f"gaze_scroll: {midpoint} {rect.height} {amount}")


def stop_scroll():
    global scroll_amount, scroll_job, gaze_job
    scroll_amount = 0
    if scroll_job:
        cron.cancel(scroll_job)

    if gaze_job:
        cron.cancel(gaze_job)

    global control_mouse_forced
    if control_mouse_forced and config.control_mouse:
        toggle_control(False)
        control_mouse_forced = False

    scroll_job = None
    gaze_job = None
    gui_wheel.hide()

    # if eye_zoom_mouse.zoom_mouse.enabled and eye_mouse.mouse.attached_tracker is not None:
    #    eye_zoom_mouse.zoom_mouse.sleep(False)


def start_cursor_scrolling():
    global scroll_job, gaze_job
    stop_scroll()
    gaze_job = cron.interval("60ms", gaze_scroll)
    # if eye_zoom_mouse.zoom_mouse.enabled and eye_mouse.mouse.attached_tracker is not None:
    #    eye_zoom_mouse.zoom_mouse.sleep(True)


if app.platform == "mac":
    from talon import tap

    def on_move(e):
        if not config.control_mouse:
            buttons = ctrl.mouse_buttons_down()
            # print(str(ctrl.mouse_buttons_down()))
            if not e.flags & tap.DRAG and buttons:
                e.flags |= tap.DRAG
                # buttons is a set now
                e.button = list(buttons)[0]
                e.modify()

    tap.register(tap.MMOVE | tap.HOOK, on_move)
