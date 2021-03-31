# from talon import ctrl, ui, Module, Context, actions, clip, app, noise

# ctx = Context()
# mod = Module()

# # mod.apps.loophero = "app.name: Loop Hero"

# # mod.apps.loophero = """
# # os: mac
# # and app.bundle: com.devolverdigital.loophero
# # """
# ctx.matches = r"""
# app: Loop Hero
# """

# def on_hiss(active):
#     print("hiss: loop hero", active)
#     if (eye_zoom_mouse.zoom_mouse.enabled
#        and eye_mouse.mouse.attached_tracker is not None 
#        and active):
#        # changing the default didn't make it go faster. only adding more function calls
#         actions.user.mouse_scroll_up_continuous()
#         actions.user.mouse_scroll_up_continuous()
#         actions.user.mouse_scroll_up_continuous()
#         actions.user.mouse_scroll_up_continuous()
#         actions.user.mouse_scroll_up_continuous()
#         actions.user.mouse_scroll_up_continuous()
#         actions.user.mouse_scroll_up_continuous()
#     else:
#         actions.user.mouse_scroll_stop()
# noise.register("hiss", on_hiss)

