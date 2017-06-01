@echo off
rem This batch file was created by Denis Mukhin, 11/20/96
rem e-mail: s22460dm@umassd.edu
rem Input parametrs:
rem %1 source file name (without extension)
rem %2 blank - don't run util & mgen
rem    /u    - run util only
rem    /m    - run mgen only
rem    /um   - run both util and mgen

if not exist %1.bak goto lab_mult
echo Delete *.bak files ...
del *.bak

:lab_mult
echo Run Multi-Pascal with input/output redirection ...
multi < %1.in > %1.out

:lab_util
if "%2"==""   goto lab_last
if "%2"=="/m" goto lab_mgen
echo Run avarage utilization utility ...
util %1.out
copy util.out %1.out > nul
del util.out
if "%2"=="/u" goto lab_last

:lab_mgen
echo Run m-file generator utility ...
mgen %1.out
copy mgen.out %1.m > nul
del mgen.out

:lab_last
echo Call editor to see results ...
if not exist %1.m goto lab_nom
edit %1.pas %1.in %1.out %1.m
goto lab_end
:lab_nom
edit %1.pas %1.in %1.out
:lab_end
