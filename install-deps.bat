@echo off
echo Installing dependencies with Docker...
echo.

docker run --rm -v "%cd%":/app -w /app node:22-alpine npm install

if %ERRORLEVEL% eq 0 (
    echo.
    echo Dependencies installed successfully!
    echo You can now run: start-docker.bat
) else (
    echo.
    echo Error installing dependencies
)
