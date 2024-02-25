import pyautogui
import os

ScriptDir = os.path.dirname(__file__)
image = ScriptDir + '\image.png'

while True:
    if pyautogui.locateOnScreen(image, confidence=0.8):
        pyautogui.press('space')