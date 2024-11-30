@echo off
REM Install required Python packages (if any)
echo Installing required Python packages...
pip install -r requirements.txt

REM Check if Flask is installed (optional step for your project)
echo Checking for Flask...
pip show Flask >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Flask is not installed. Installing Flask...
    pip install Flask
)

REM Launching index.html in the default browser
echo Launching index.html...
start "" "index.html"

REM Wait for user input to close the window (optional)
pause
