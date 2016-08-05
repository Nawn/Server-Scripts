@echo off
shutdown -a
echo .
echo .
set /p broadcast=Would you like to broadcast "The shutdown has been aborted. Thank you." [y/n](n - default): 

IF /I "%broadcast%"=="y" (msg * "The shutdown has been aborted. Thank you.") ELSE (echo Very well, shutdown silently aborted...)

set /p temp=Press enter to close...