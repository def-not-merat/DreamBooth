@echo off
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe -o .\miniconda.exe
start /wait "" .\miniconda.exe /S
del .\miniconda.exe

set PATH=%PATH%;C:\Users\merat\AppData\Local\miniconda3;C:\Users\merat\AppData\Local\miniconda3\Scripts
conda init
start cmd /k "conda env create -f windows-bergeron-conda-env.yml"

powershell -c "Invoke-WebRequest -Uri 'https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user' -OutFile '.\VSCodeUserSetup-x64-1.99.0.exe'"
start /wait "" .\VSCodeUserSetup-x64-1.99.0.exe /S
del .\VSCodeUserSetup-x64-1.99.0.exe





