@echo off
set /p run=Are you sure you'd like to run the QB Startup fix? [y/n]:
IF /I "%run%"=="y" (
	ECHO Running broadcast..
	timeout 2 > NUL
	msg * /SERVER:VMRECOVERY Good day! In exactly one minute, we will be running a Quickbooks hotfix to increase performance. This may cause your quickbooks to close without notice. Please save all work. Quickbooks will be ready to use in approx. 2 minutes. Thank you!
	timeout 60
	"C:\Admin Tools\QB Startup Fix, Click Here.exe"
) ELSE (
	Echo Cancelled...
	timeout 1 > NUL
	set /p temp="Enter to close..."
)