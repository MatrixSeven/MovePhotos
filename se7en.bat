@echo off&&setlocal enableextensions
title PhotosMoves By:Seven&&color 0D
MODE CON COLS=64 LINES=15
set  mycolor="9ABCDEF"
set "sevens=call :seven"&&set "end=@echo."
set myName=%~n0
if "%myName%" neq "se7en" (
		@echo. &&@echo.&&@echo               �ļ�����~��~�����뽫�ļ����޸�Ϊse7en�󷽿��������С�
		@echo. &&@echo.&&@echo              �Զ��޸���ing���...���������������
		@echo.         &&%sevens% D "                      By@��С��   QQ��"&&%sevens% 9 "9"&&%sevens% A "8"&&%sevens% B "5"&&%sevens% C "3"&&%sevens% D "9"&&%sevens% E "0"&&%sevens% F "9"&&%sevens% A "2"&&%sevens% C "7"
		rename %0 se7en.bat
		pause>nul
		se7en.bat&exit
	)
:f
goto main
:k
set /p select="��ѡ��Ҫ���������:"
if "%select%" == "1" goto f1
if "%select%" == "2" goto f2
if "%select%" == "3" goto f3
if "%select%" == "4" goto f4
if "%select%" == "5" goto f5
if "%select%" == "6" exit
goto f
:f1
for /r %%a in ("*.jpg") do set "t=%%~ta"&&call :movesByDd "%%a" %%t%%
goto :dels
:f2
for %%a in ("*.jpg") do set "t=%%~ta"&&call :movesByDd "%%a" %%t%%
goto :dels
:f3
for /r %%a in ("*.jpg") do set "t=%%~ta"&&call :movesByMm "%%a" %%t%%
goto :dels
:f4
for %%a in ("*.jpg") do set "t=%%~ta"&&call :movesByMm "%%a" %%t%%
goto :dels
:f5
@echo ������ļ��ŵ���Ҫ������Ƭ��Ŀ¼������>D:\help.txt
@echo �ᰴ����������������ļ��в��Ұ������ڶ���Ƭ�����ƶ����߷���>>D:\help.txt
start notepad.exe "D:\help.txt"
goto k
:dels
for /f "delims=" %%s in ('dir /s /ad /b') do rd /q "%%s" 2>nul 1>nul
del /f /q "C:\help.txt" 2>nul 1>nul
goto f
:movesByDd
set dates=%2&&call set dates=%%dates:/=-%%
md %dates% 2>nul 1>nul
move %1 %dates%
set /a p=p+1
goto :eof
:movesByMm
set dates=%2&&call set dates=%%dates:/=-%%&&call set dates=%%dates:~0,7%%
md %dates% 2>nul 1>nul
move %1 %dates%
set /a p=p+1
goto :eof
:main
cls
%sevens% E "��������������������������������������������������������������"&&%end%
%sevens% E "��"&&%sevens% C "                  ��Ƭ���๤��"&&%sevens% E "                            ��"&&%end%
%sevens% E "��"&&%sevens% A "              1.����Ŀ¼��������Ƭ(����)"&&%sevens% E "                  ��"&&%end%
%sevens% E "��"&&%sevens% A "              2.���൱ǰĿ¼����Ƭ(����)"&&%sevens% E "                  ��"&&%end%
%sevens% E "��"&&%sevens% A "              3.����Ŀ¼��������Ƭ(����)"&&%sevens% E "                  ��"&&%end%
%sevens% E "��"&&%sevens% A "              4.���൱ǰĿ¼����Ƭ(����)"&&%sevens% E "                  ��"&&%end%
%sevens% E "��"&&%sevens% A "              5.������ϸ�İ����ĵ�"&&%sevens% E "                        ��"&&%end%
%sevens% E "��"&&%sevens% A "              6.�˳�"&&%sevens% E "                                      ��"&&%end%
%sevens% E "��"&&%sevens% F "                         @Seven 2014-8-24"&&%sevens% E "                 ��"&&%end%
%sevens% E "��"&&%sevens% F "                               QQ��"&&%sevens% 9 "9"&&%sevens% A "8"&&%sevens% B "5"&&%sevens% C "3"&&%sevens% D "9"&&%sevens% E "0"&&%sevens% F "9"&&%sevens% A "2"&&%sevens% C "7"&&%sevens% E "              ��"&&%end%
%sevens% E "��������������������������������������������������������������"&&%end%
if defined p echo ok.�ɹ��ķ����� %p% ����Ƭ&&set /a p=0
set files=nul
set select=nul
if not defined "%files%" set /p files="��ק��Ҫ�����Ŀ¼ 6�˳�:"
if "%files%" equ "6" exit
if not exist "%files%" @call %sevens% A �ļ�·��������,���������&&pause>nul&&goto main
for %%a in ("%files%") do set "b=%%~aa"
if defined b (if %b:~0,1% neq d (@echo ק��Ĳ���Ŀ¼,���������&&pause>nul&&goto main ))
cd /d "%files%"
goto k
:seven
pushd "%temp%"&set/p= <nul>"%~2"&findstr /a:%~1 .* "%~2" nul&del "%~2"&popd