from talon import app, canvas, ctrl, Module, Context, actions, ui,imgui, applescript
from talon.voice import Capture
import re
import time
import os
import platform

mod = Module()

@mod.action_class
class Actions:
    def test_position():
        """displays current mouse coordinates"""
        x, y = ctrl.mouse_pos()
        print("CURRENT POSITION ----> x: {0}, y: {1}".format(x, y))

    def character_position():
        """move the mose to the character position"""
        ctrl.mouse(636, 914)

    def skip_position():
        """move the mose to the skip position when choosing a card"""
        ctrl.mouse(1274, 1180)

    def boss_relic_position(n: int):
        """move the mose to the boss relic choice 1"""
        if n == 1:
            ctrl.mouse(1280, 500)
        elif n == 2:
            ctrl.mouse(1428, 695)
        elif n == 3:
            ctrl.mouse(1152, 696)   
        else:
            raise Exception("1,2,3 are the only options")

    def chest_position():
        """move the mouse to the chest reward position"""
        ctrl.mouse(1716, 886)


    def potion_position(n: int):
        """move the mouse to enemy position"""
        helper.horizontal_position(755, 49, 85, n)

    def enemy_position(n: int):
        """move the mouse to enemy position"""
        helper.horizontal_position(1100, 950, 100, n)

    def reward_choose_a_card(n: int):
        """move the mouse to card 1-3 when choosing a card as reward"""
        helper.horizontal_position(952, 827, 450, n)

    def choose_run_start_option(n: int):
        """move the mouse to one of the four start menu options"""
        helper.vertical_position(1014, 405, 100, n)

    def spoils_1():
        """move the mouse to first item of the spoil screen"""
        ctrl.mouse(1261, 569) 
    
    def proceed():
        """move the mouse to the proceed arrow after looting"""
        ctrl.mouse(2223, 1014) 
        ctrl.mouse_click(button=0)

    def select_area():
        """just clicks the mouse since I don't know how to do that in .talon"""
        ctrl.mouse_click(button=0)

    

    def show_enemy_grid():
        """show the enemy grid"""
        if enemyGrid.showing:
            enemyGrid.cancel()
        enemyGrid.show()

    def hide_enemy_grid():
        """hides the enemy grid"""
        if not enemyGrid.showing:
            raise Exception("grid not shown")
        enemyGrid.cancel()
    

#Helpers
def horizontal_position(self, start_x_position, y_position, horiztonal_spacing, spaces):
    ctrl.mouse((start_x_position) + (spaces * horiztonal_spacing), y_position)

def vertical_position(self, start_y_position, x_position, vertical_spacing, spaces):
    ctrl.mouse(x_position, (start_y_position - vertical_spacing) + (spaces * vertical_spacing))

def generateSpaces(start_x, start_y, spacing, count, horiztonal):
    spaces = []
    for i in range(count):
        if horiztonal:    
            x = (start_x) + (i * spacing)
            y = start_y
        else:
            x = start_x
            y = start_y + (i * spacing)
        spaces.append((x, y))

    return spaces

class EnemyGrid:
    def __init__(self):
        self.showing = False
        self.win = None
        self.canvas = None
        ui.register('', self.cancel_if_background)

    def show(self):
        self.showing = True
        win = self.win = ui.active_window()
        wrect = win.rect

        self.canvas = canvas.Canvas.from_rect(win.rect, paused=True)
        self.canvas.register('draw', self.draw)
        self.canvas.freeze()

    def cancel_if_background(self, topic, obj):
        active = ui.active_window()
        if self.showing and not active or self.win != active:
            self.cancel()

    def cancel(self):
        if self.canvas:
            self.canvas.close()
        self.canvas = None
        self.win = None
        self.showing = False

    def draw(self, canvas):
        paint = canvas.paint
        wrect = self.win.rect
        pad = 2

        spaces = generateSpaces(1100, 1050, 100, 14, True)

        for i, space in enumerate(spaces):

            rect = ui.Rect(space[0] + wrect.x, space[1] + wrect.y, 500, 500)
            _, trect = paint.measure_text(str(i))
            target = ui.Rect(rect.left - trect.width / 2 - pad, rect.top - trect.height / 2 - pad, trect.width + pad * 2, trect.height + pad * 2)
            paint.style = paint.Style.FILL
            paint.color = 'white'
            canvas.draw_rect(target)
            paint.color = 'black'
            paint.stroke_width = 1
            paint.style = paint.Style.STROKE
            canvas.draw_rect(target)
            paint.style = paint.Style.FILL
            canvas.draw_text(str(i), target.x + pad, target.y + trect.height + pad / 2)


enemyGrid = EnemyGrid()