@echo off
for /f delims^=^" %%i in ('dir %1\*.* /ad /ah /b') do attrib -h "%%i"