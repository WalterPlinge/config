@echo off

:: alias will open this file for editing, use your desired editor
doskey alias=subl %~dp0\alias.cmd $*
doskey clear=cls $*
doskey ls=dir /OG $*
doskey which=where $*

doskey gita=git add $*
doskey gitd=git diff $*
doskey gitp=git push $*
doskey gitf=git fetch $*
doskey gitm=git merge $*
doskey gitc=git commit $*
doskey gits=git status $*
doskey gitl=git log --decorate --graph --oneline $*
