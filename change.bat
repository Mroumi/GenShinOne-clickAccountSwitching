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

start "" "F:\yuanshen\Genshin Impact\launcher.exe"
exit