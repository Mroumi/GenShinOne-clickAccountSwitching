@echo off
setlocal enableDelayedExpansion

set valid=0
:input
set /p a=������Ҫ��½�˺�ǰ���Num:
if !a! equ 1 (
  REG IMPORT ���.reg
  set valid=1
) else if !a! equ 2 (
  REG IMPORT С��.reg
  set valid=1
) else (
  echo ����������
  goto input
)
set config_file=app_config.ini

if not exist %config_file% (
echo ���������İ�װ·����
set /p app_path=
echo app_path=!app_path! > %config_file%
) else (
for /f "usebackq delims=" %%a in (%config_file%) do set %%a
)

start "" "%app_path%"
exit