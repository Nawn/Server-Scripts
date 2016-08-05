@echo off
title Remote control Select
echo Loading current sessions...
timeout 1 /nobreak > NUL
qwinsta
timeout 1 /nobreak > NUL
set /p id=Please input session id of user :
set /p control=Would you like to take control of session? [y/n](blank for n):

IF /I "%control%"=="y" (mstsc.exe /admin /v:PFSSERVER /shadow:%id% /control) ELSE (mstsc.exe /admin /v:PFSSERVER /shadow:%id%)