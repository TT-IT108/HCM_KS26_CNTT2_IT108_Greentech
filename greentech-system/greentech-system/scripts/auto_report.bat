@echo off
setlocal
REM AUDIT: This script reads the log and appends a report. It does not delete files.
set "ROOT=%~dp0.."
set "LOG=%ROOT%\data\log-he-thong.log"
set "BACKUP=%ROOT%\backup"
set "REPORT=%BACKUP%\bao-cao-su-co.txt"

if not exist "%LOG%" (
    echo [AUDIT] Khong tim thay file log: "%LOG%"
    exit /b 1
)
if not exist "%BACKUP%" mkdir "%BACKUP%"

(
    echo ==================================================
    echo BAO CAO SU CO HE THONG - GREENTECH
    echo Thoi gian chay: %date% %time%
    echo ==================================================
) >> "%REPORT%"

type "%LOG%" | findstr /I /C:"CRITICAL" /C:"ERROR" /C:"TIMEOUT" >> "%REPORT%"
if errorlevel 1 (
    echo Khong tim thay dong phu hop hoac findstr khong xu ly duoc dau vao.
) else (
    echo Hoan tat loc log. Bao cao: "%REPORT%"
)
echo.>> "%REPORT%"
endlocal
