@echo off
title mysite download bat
echo powered by blacklaw
::初始数据
set username=blacklaw
set password=ftpkongjian
set lcdpath=%~dp1
set lcdpath=%lcdpath:~0,-1%
set cdpath=wwwroot
set filename="%~nx1"
goto withdefault
:username
echo please input username
set /p username=
if %username%=="" (
echo username can't be empty
goto username
)
:password
echo please input password
set /p password=sadfsaf>nul
if %password%=="" (
echo password can't be empty
goto password
)
:withdefault
set ftpcmdpath=c:\ftplines.txt
>%ftpcmdpath% echo open www.townke.com
>>%ftpcmdpath% echo %username%
>>%ftpcmdpath% echo %password%
>>%ftpcmdpath% echo hash
>>%ftpcmdpath% echo trace
>>%ftpcmdpath% echo dir
>>%ftpcmdpath% echo ls
>>%ftpcmdpath% echo cd %cdpath%
>>%ftpcmdpath% echo dir
>>%ftpcmdpath% echo lcd %lcdpath%
>>%ftpcmdpath% echo put %filename%
>>%ftpcmdpath% echo bye
ftp -s:%ftpcmdpath%
del %ftpcmdpath%
pause
