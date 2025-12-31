@echo off
setlocal
cd /d "%~dp0"

start "" cmd /c "npm run dev"

if exist "backend\package.json" start "" cmd /c "cd /d backend && npm run dev"
if exist "server\package.json" start "" cmd /c "cd /d server && npm run dev"
if exist "api\package.json" start "" cmd /c "cd /d api && npm run dev"
if exist "server.js" start "" cmd /c "node server.js"
if exist "backend\manage.py" start "" cmd /c "cd /d backend && python manage.py runserver"

endlocal
