@echo off
set /p firststart=< Assets\FirstStart.ini
if "%firststart%"=="1" (goto installpkg) else (goto start)

:installpkg
echo it seems to be your first time running this program
echo installing dependencies...
pip install pyautogui < nul
pip install os < nul

:start
echo auto jump started close this window to stop
python "Assets\BACautoJump.py"