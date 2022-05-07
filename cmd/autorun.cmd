:: to automatically run this script, add it to the registry
:: [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor]
:: "AutoRun"="path\to\autorun.cmd"
:: or edit your cmd launcher to run it as a command
:: "cmd.exe" /k "path\to\autorun.cmd"
@echo off
call "%CLINK_DIR%\clink.bat" inject --autorun --profile ~\clink
call %~dp0\alias.cmd
call %~dp0\settings.cmd
