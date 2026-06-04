@echo off
echo ==========================================
echo       Welcome to Nuba AI - OpenClaw Setup  
echo ==========================================
echo.
echo [1/3] Checking Node.js environment...
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed! Please install Node.js first.
    pause
    exit
)

echo [2/3] Installing lightweight core dependencies...
call npm install express dotenv --no-audit --no-fund

echo [3/3] Creating environment configuration...
if not exist .env (
    echo PORT=3000 > .env
    echo OPENAI_API_KEY=your_key_here >> .env
    echo [SUCCESS] .env configuration file created!
)

echo.
echo ==========================================
echo  Installation Complete! Running Server...
echo ==========================================
node server.js
pause
