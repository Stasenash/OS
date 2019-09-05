@echo off
for /f %%i in ('dir %1\*.* /s /ad /ah /b') do attrib -h %%i