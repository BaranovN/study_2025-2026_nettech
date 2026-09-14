@echo off
setlocal
set "PATH=C:\Users\barash\AppData\Roaming\TinyTeX\bin\windows;C:\Program Files\Quarto\bin;%PATH%"
set "TEXINPUTS="
set "TEXMFDBS="
set "TEXMFROOT="
set "TEXMFCNF="
"C:\Program Files\Quarto\bin\quarto.exe" %*
exit /b %ERRORLEVEL%