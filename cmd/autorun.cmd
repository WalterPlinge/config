:: to automatically run this script, add it to the registry
:: [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor]
:: "AutoRun"="path\to\autorun.cmd"
:: or edit your cmd launcher to run it as a command
:: "cmd.exe" /k "path\to\autorun.cmd"
@echo off

:: if you have clink, use that first
call "%CLINK_DIR%\clink.bat" inject --autorun --profile ~\clink

:: now aliases and other settings
call %~dp0\alias.cmd
call %~dp0\settings.cmd

:: I also use portable msvc by mmozeiko <https://gist.github.com/mmozeiko/7f3162ec2988e81e56d5c4e22cde9977>
call %~dp0\..\msvc\setup.bat
