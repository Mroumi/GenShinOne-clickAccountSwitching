::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCeDJF2L40w8JxpQAYFr8+1GyvsV6+eb
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCiDJNxqC8X11p68q4Jv/uNuwDDzP9R/NwoOVoOYvAW5lU2V36yLQA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo PowerBy������
echo 1.���
echo 2.С��
setlocal enableDelayedExpansion

set valid=0
:input
set /p a=������Ҫ��½�˺�ǰ�������:
if !a! equ 1 (
  REG IMPORT ���.reg
  set valid=1
) else if !a! equ 2 (
  REG IMPORT С��.reg
  set valid=1
) else (
  echo �������������
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