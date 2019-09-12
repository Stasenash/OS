@echo off
rem FOR %%i in (%1\*.*) do echo %%~xi
rem пока не работает
@setlocal enabledelayedexpansion
@for /f "tokens=*" %%a in ('dir *.* /b') do @(
    set ext=%%~xa
    echo !ext:~1!
)
set "username_1=%username:~1%"

@echo off
setlocal enableextensions enabledelayedexpansion

for /f "usebackq delims=" %%i in (`dir /a:-d /b`) do (
	set sValue=%%~i
	echo [%%~i]
	echo [!sValue:~1!]
	echo.
)

endlocal
exit /b 0

@echo off
setlocal

for /f "usebackq delims=" %%i in (`dir /a:-d /b`) do (
	set sValue=%%~i
	echo [%%~i]
	call echo [%%sValue:~1%%]
	echo.
)

endlocal
exit /b 0