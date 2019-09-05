@echo off
for /f %%i in ('dir %1\*.* /ad /ah /b') do attrib -h %%i