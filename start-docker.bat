@echo off
echo Starting Academic Website with Docker...
echo.

echo Step 1: Building Docker image...
docker build -t academic-website .

if %ERRORLEVEL% neq 0 (
    echo Error: Failed to build Docker image
    echo Make sure Docker is installed and running
    pause
    exit /b 1
)

echo.
echo Step 2: Starting development server...
echo Your website will be available at: http://localhost:4321
echo Press Ctrl+C to stop the server
echo.

docker run -it --rm -p 4321:4321 -v "%cd%":/app -v /app/node_modules academic-website
