@echo off
REM 检查 Node.js 和 npm 是否已安装
node -v >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Error: Node.js and npm are required but not installed. Please install them first.
    exit /b 1
)

REM 输出当前使用的 npm 版本
echo Using npm version: !npm -v!

REM 全局安装http-server
REM npm install -g http-server

REM 启动 http-server 并监听 8081 端口
http-server -p 8081 & start "" http://127.0.0.1:8081

pause