@echo off

:: alias will open this file for editing, use your desired editor
doskey alias=subl %~dp0\alias.cmd $*
doskey cat=type $*
doskey clear=cls $*
doskey cp=xcopy $*
doskey curldl=curl -JLO $*
doskey ls=dir /OG $*
doskey mv=move $*
doskey rm=del $*

:: some git helpers
doskey gita=git add $*
doskey gitc=git commit $*
doskey gitd=git diff $*
doskey gitf=git fetch $*
doskey gitl=git log $*
doskey gitlp=git log --graph --pretty="format:%%C(yellow)%%h %%C(cyan)%%as %%C(green)%%aN %%C(auto)%%+d%%n%%w(64,4,4)%%s%%n" $*
doskey gitm=git merge $*
doskey gitp=git push $*
doskey gits=git status $*
