@echo off
::declare variable ==> rem
SET P_PATH=D:\Workspaces

cd /d %P_PATH%
cmd /c gradlew build bootJarWithDemo -x test

ping 127.0.0.1 -n 5 >nul
start explorer %P_PATH%\server\build\libs