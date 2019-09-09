@echo off
if ""=="%1" goto param
if not exist "%1" (echo File isn't exist) else (attrib +h +r "%1")
goto end
:param
echo You need to use a parameter
:end