@echo off
for /f %%i in ('dir %1\*.* /s /b /a-d') do (set /a num+=1)
echo In these catalogs there are %num% files
set /a num=0
pause