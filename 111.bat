@echo off
setlocal enableDelayedExpansion

set valid=0
:input
set /p a=请输入要登陆账号前面的Num:
if !a! equ 1 (
  REG IMPORT 大号.reg
  set valid=1
) else if !a! equ 2 (
  REG IMPORT 小号.reg
  set valid=1
) else (
  echo 请重新输入
  goto input
)
set config_file=app_config.ini

if not exist %config_file% (
echo 请输入程序的安装路径：
set /p app_path=
echo app_path=!app_path! > %config_file%
) else (
for /f "usebackq delims=" %%a in (%config_file%) do set %%a
)

start "" "%app_path%"
exit