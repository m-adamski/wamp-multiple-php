@echo off
setLocal enableDelayedExpansion

:: Define global variables
set currentPath=%~dp0
set phpPath=%currentPath%bin\php
set phpPrefix=php
set phpExe=php.exe

:: Get provided PHP version
set phpVersion=%1

if "%phpVersion%"=="" (
    echo The PHP version must be provided
    goto :eof
)

for %%i in (%*) do (
    if not %%i==%phpVersion% (
        set commandParameters=!commandParameters! %%i
    )
)

:: Check if provided PHP version exist
if exist %phpPath%\%phpPrefix%%phpVersion%\%phpExe% (
    call %phpPath%\%phpPrefix%%phpVersion%\%phpExe% %commandParameters%
) else (

    for /f %%i in ('dir %phpPath%\%phpPrefix%%phpVersion%.* /a:d /b') do (
        if exist %phpPath%\%%i\%phpExe% (
            call %phpPath%\%%i\%phpExe% %commandParameters%
            goto :eof
        )
    )
)
