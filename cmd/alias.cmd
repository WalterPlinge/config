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
doskey which=where $*

:: some git helpers
doskey gita=git add $*
doskey gitc=git commit $*
doskey gitd=git diff $*
doskey gitf=git fetch $*
doskey gitl=git log --graph --pretty=tformat:"%C(auto)%h%d%n%cN %cs (Author: %aN %as)%n  %s"
doskey gitlb=git log -n 2 --graph --pretty=tformat:"%C(auto)%h%d%n%cN %cs (Author: %aN %as)%n  %s%n    %b"
doskey gitm=git merge $*
doskey gitp=git push $*
doskey gits=git status $*
