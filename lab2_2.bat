@echo off
for /f delims^=^" %%i in ('dir %1\*.* /s /ad /ah /b') do attrib -h "%%i"