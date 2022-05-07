@echo off
call "%CLINK_DIR%\clink.bat" inject --autorun --profile ~\clink
call %~dp0\alias.cmd
call %~dp0\settings.cmd
