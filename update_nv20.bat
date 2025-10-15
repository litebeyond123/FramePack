@echo off
setlocal enableextensions

set "VENV_DIR=venv"
if not exist "%VENV_DIR%" (
    python -m venv "%VENV_DIR%"
)

if exist "%VENV_DIR%\Scripts\activate" (
    call "%VENV_DIR%\Scripts\activate"
) else (
    echo Virtual environment not found.
    exit /b 1
)

python -m pip install --upgrade pip
python -m pip install --extra-index-url https://download.pytorch.org/whl/cu126 torch torchvision torchaudio
python -m pip install -r requirements.txt

echo Ready. Launch run_nv20.bat to start the UI.

endlocal
