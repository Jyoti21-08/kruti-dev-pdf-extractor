@echo off
echo ========================================================
echo PDF Data Extractor (Kruti Dev to Unicode Converter)
echo ========================================================
echo.

:: Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Python is not installed or not added to PATH.
    echo Please install Python from https://www.python.org/downloads/ and check the box "Add Python to PATH" during installation.
    pause
    exit /b
)

:: Set up virtual environment if it doesn't exist
IF NOT EXIST "venv" (
    echo Setting up the environment for the first time... This might take a minute.
    python -m venv venv
    call venv\Scripts\activate.bat
    echo Installing dependencies...
    pip install -r requirements.txt
    echo Setup complete!
    echo.
) ELSE (
    call venv\Scripts\activate.bat
)

:INPUT_LOOP
set /p input_pdf="Enter the name of the PDF file (e.g., document.pdf): "
IF NOT EXIST "%input_pdf%" (
    echo [ERROR] File "%input_pdf%" not found! Please make sure the file is in this folder and try again.
    echo.
    goto INPUT_LOOP
)

set /p output_name="Enter the desired output name (without extension, e.g., extracted_data): "

echo.
echo Extracting data... Please wait...
python extract_to_csv.py "%input_pdf%" "%output_name%"

echo.
echo Process finished! Check for the .csv and .xlsx files in this folder.
pause
