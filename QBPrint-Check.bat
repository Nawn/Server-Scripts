@echo off
CALL QBPrint.bat
if exist "C:\ProgramData\Intuit\QuickBooks 2016\QBPrint.qbp" (
	echo .
	echo .
	echo The file "QBPrint.QBP" has not been deleted
	echo .
	echo .
) else (
	echo .
	echo .
	echo Success!, the file "QBPrint.QBP" does not exist in the directory.
	echo .
	echo .
)
set /p temp=Enter to close...