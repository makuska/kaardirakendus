@echo off

cd ./backend

rem Execute Maven Wrapper clean and run
mvnw clean package

rem Pause to keep the terminal window open
echo.
echo Press any key to exit...
pause >nul