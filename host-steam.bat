@echo off
chcp 65001 > nul
set hostsfile=%SystemRoot%\System32\drivers\etc\hosts
if "%OS%"=="Windows_NT" (
    REM Thêm các địa chỉ IP và tên miền vào tệp hosts
    echo.  >> %hostsfile%
    echo # Steam >> %hostsfile%
    echo 184.85.112.102 store.steampowered.com >> %hostsfile%
    echo 184.85.112.102 steampowered.com >> %hostsfile%
    echo 184.85.112.102 steamcommunity.com >> %hostsfile%
) else (
    echo Hệ điều hành không được hỗ trợ.
    exit /b
)

REM Tạo màu sắc
color 0a
echo ___________________________________________________________
echo.
echo            Các địa chỉ IP Steam đã được thêm vào tệp hosts
echo ___________________________________________________________
echo.
echo Đã thêm 184.85.112.102 store.steampowered.com
echo Đã thêm 184.85.112.102 steampowered.com
echo Đã thêm 184.85.112.102 steamcommunity.com
echo.
echo ___________________________________________________________
echo.
echo Tác giả: TanNhatCMS
echo GitHub: https://github.com/TanNhatCMS
echo.
pause
exit
