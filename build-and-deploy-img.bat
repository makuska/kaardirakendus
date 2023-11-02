@echo off

call ./build-be.bat

docker build -t saskia02/kaardirakendus .

docker tag saskia02/kaardirakendus saskia02/kaardirakendus:latest

docker push saskia02/kaardirakendus:latest

echo.
echo Press any key to exit...
pause >nul