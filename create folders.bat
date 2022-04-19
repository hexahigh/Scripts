@echo off

set /a x=10

:top

mkdir Part%x%

set /a x+=1

pause

goto top