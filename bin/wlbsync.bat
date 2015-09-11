@echo off
for /f "delims=" %%i in ('dirname %1') do set curdir=%%i

if %2==all (
	echo copyall
	%curdir%\sync.bat %curdir%\* 
) else (
	echo copyfile
 	%curdir%\sync.bat %1
)
