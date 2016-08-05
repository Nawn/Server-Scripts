@echo off
title Server Restart
set /p verify=Are you sure you want to restart the server?[y/n](n - default):
IF /I "%verify%"=="y" (shutdown.exe -r -t 45 -c "Good Afternoon! Please save all current work as the server will restart in 45 seconds. We apologize for any inconvenience. You may log back in 3 minutes after the restart. Thank you and have a great day!") ELSE (echo "Alright, Restart is not initiated")
set /p temp=Press enter to continue...