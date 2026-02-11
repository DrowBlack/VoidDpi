@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Bu program yonetici izni gerektiriyor...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
chcp 65001 >nul
setlocal EnableDelayedExpansion
color 0D

if not defined CTRL_C_HANDLED (
    set CTRL_C_HANDLED=1
    call "%~f0" %*
    exit /b
)

title VoidDPI - Gelismis DPI Atlatma Araci

:MAIN_MENU
cls
echo.
echo      ██╗    ██╗ ██████╗ ██╗██████╗      ██████╗ ██████╗ ██╗
echo      ██║    ██║██╔═══██╗██║██╔══██╗     ██╔══██╗██╔══██╗██║
echo      ██║    ██║██║   ██║██║██║  ██║     ██║  ██║██████╔╝██║
echo      ╚██╗ ██╔╝██║   ██║██║██║  ██║     ██║  ██║██╔═══╝ ██║
echo       ╚████╔╝ ╚██████╔╝██║██████╔╝     ██████╔╝██║     ██║
echo        ╚═══╝   ╚═════╝ ╚═╝╚═════╝      ╚═════╝ ╚═╝     ╚═╝
echo.
echo      ══════════════════════════════════════════════════════
echo                          DPI ATLATMA ARACI v1.1
echo      ══════════════════════════════════════════════════════
echo.

tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo      [○] DURUM: VoidDPI CALISIYOR
) else (
    echo      [○] DURUM: VoidDPI DURDURULDU
)

echo.
echo      ┌─────────────────────────────────────────────────┐
echo      │  [1] VoidDPI'yi Baslat                          │
echo      │  [2] Sistem Bilgisi                             │
echo      │  [3] Hakkinda                                   │
echo      │  [4] Cikis                                      │
echo      └─────────────────────────────────────────────────┘

echo.
set /p "choice=      Seciminizi yapin (1-4): "

if "%choice%"=="1" goto OPTION1
if "%choice%"=="2" goto OPTION2
if "%choice%"=="3" goto OPTION3
if "%choice%"=="4" goto EXIT
echo      [!] Gecersiz secim! Lutfen 1-4 arasinda bir sayi girin.
timeout /t 2 >nul
goto MAIN_MENU

:OPTION1
echo.
echo      [+] VoidDPI baslatiliyor...
echo.
start "" /min "%~dp0script.vbs" -1
timeout /t 3 >nul
tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo      [✓] VoidDPI basariyla baslatildi!
) else (
    echo      [!] Baslatma basarisiz! Farkli yontemler deneniyor...
)
echo.
pause
goto MAIN_MENU

:OPTION2
cls
echo      ┌─────────────────────────────────────────────────┐
echo      │                 SISTEM BILGISI                  │
echo      └─────────────────────────────────────────────────┘
echo      • Isletim Sistemi: %OS%
echo      • Bilgisayar Adi: %COMPUTERNAME%
echo      • Kullanici: %USERNAME%
echo      • Tarih: %DATE%
echo      • Saat: %TIME:~0,5%
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do echo      • IP Adresi:%%i
echo.

tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo      ┌─────────────────────────────────────────────────┐
    echo      │             VoidDPI DURUM BILGISI               │
    echo      └─────────────────────────────────────────────────┘
    for /f "skip=3 tokens=2,5" %%a in ('tasklist /fi "imagename eq VoidDpi.exe"') do (
        echo      • Process ID: %%a
        echo      • Bellek Kullanimi: %%b
    )
    echo      • Durum: AKTIF
    echo      • Mod: Standart
    echo.
) else (
    echo      ┌─────────────────────────────────────────────────┐
    echo      │             VoidDPI DURUM BILGISI               │
    echo      └─────────────────────────────────────────────────┘
    echo      • VoidDPI Durumu: DURDURULDU
    echo.
)
pause
goto MAIN_MENU

:OPTION3
cls
echo.
echo      ┌─────────────────────────────────────────────────┐
echo      │                    HAKKINDA                     │
echo      └─────────────────────────────────────────────────┘
echo      • Program: VoidDPI
echo      • Versiyon: 1.1
echo      • Gelistirici: DrowBlackTw
echo      • Aciklama: DPI tabanli internet sansurunu asmak
echo                  icin gelistirilmis arac
echo.
echo      • Kullanim: Ctrl+c = Dpi'i Kapat
echo      • Gizli Mod: Arka planda calisir, pencere acmaz
echo      • Kontrol: Bu launcher ile durumunu kontrol edebilirsiniz
echo.
echo      ┌─────────────────────────────────────────────────┐
echo      │                KULLANIM IPUCLARI                │
echo      └─────────────────────────────────────────────────┘
echo      • Ctrl+C ile programi kapatabilirsiniz
echo      • Bu launcher ile kontrol edilebilir
echo.
echo.
pause
goto MAIN_MENU

:EXIT
tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo.
    set /p "confirm=VoidDPI arka planda calisiyor. Kapatmak istiyor musunuz? (E/H): "
    if /i "!confirm!"=="E" (
        echo.
        echo      [-] VoidDPI kapatiliyor...
        taskkill /f /im VoidDpi.exe >nul 2>&1
        if !errorlevel!==0 (
            echo      [✓] Tum VoidDPI surecleri kapatildi!
        ) else (
            echo      [✗] VoidDPI kapatilamadi veya zaten kapali.
        )
        timeout /t 1 >nul
    ) else (
        goto MAIN_MENU
    )
)

echo.
echo      [i] VoidDPI Launcher kapatiliyor...
timeout /t 2 >nul
exit /b 0
