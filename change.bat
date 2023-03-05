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

start "" "F:\yuanshen\Genshin Impact\launcher.exe"
exit