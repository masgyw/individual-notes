@echo off

SET CURL_HOME="D:\Tools\curl-7.72.0-win64-mingw\bin"

cd %CURL_HOME%
cmd /k curl.exe -K %~dp0/common.cfg -d @%~dp0/resp.txt