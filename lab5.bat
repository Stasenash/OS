@echo off
chcp 1251 >nul
setlocal enabledelayedexpansion
md "%1\sorted"
for /f "tokens=*" %%i in ('dir %1\*.* /b') do @(
    set ext=%%~xi
	if "!ext:~1!"=="~1" if not exist "%1\sorted\noext" md "%1\sorted\noext"
    if not exist "%1\sorted\!ext:~1!" if not "!ext:~1!"=="~1" md "%1\sorted\!ext:~1!"
)
for /f "tokens=*" %%i in ('dir %1\*.* /b') do (
	set ext=%%~xi
    if not "!ext:~1!"=="~1" if not exist "%1\sorted\!ext:~1!\%%i" copy "%1\%%i" "%1\sorted\!ext:~1!"
	if "!ext!"=="" copy "%1\%%i" "%1\sorted\noext"
)
for /f "tokens=*" %%i in ('dir %1\*.* /b /a-d') do (
	set ext=%%~xi
    if not "!ext:~1!"=="~1" echo %%~nxi - %%~ti >> "%1\sorted\!ext:~1!\report.txt"
	if "!ext!"=="" echo %%~nxi - %%~ti >> "%1\sorted\noext\report.txt"
)

