@echo off
start VSCodeUserSetup-x64-1.99.0.exe
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe -o .\miniconda.exe
start /wait "" .\miniconda.exe /S
del .\miniconda.exe
set PATH=%PATH%;C:\Users\merat\AppData\Local\miniconda3;C:\Users\merat\AppData\Local\miniconda3\Scripts
conda init
start cmd /k "conda env create -f environment.yml"
