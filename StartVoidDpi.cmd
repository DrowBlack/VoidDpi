@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Bu program yonetici izni gerektiriyor...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
chcp 65001 >nul
setlocal EnableDelayedExpansion

:: Terminal renklerini siyah arka plan, mor/pembe yazı yapma
color 0D

:: Ctrl+C handler kurulumu
if not defined CTRL_C_HANDLED (
    set CTRL_C_HANDLED=1
    call "%~f0" %*
    exit /b
)

title VoidDPI - Gelişmiş DPI Atlatma Aracı

:MAIN_MENU
cls
echo.
echo     ██╗   ██╗ ██████╗ ██╗██████╗     ██████╗ ██████╗ ██╗
echo     ██║   ██║██╔═══██╗██║██╔══██╗    ██╔══██╗██╔══██╗██║
echo     ██║   ██║██║   ██║██║██║  ██║    ██║  ██║██████╔╝██║
echo     ╚██╗ ██╔╝██║   ██║██║██║  ██║    ██║  ██║██╔═══╝ ██║
echo      ╚████╔╝ ╚██████╔╝██║██████╔╝    ██████╔╝██║     ██║
echo       ╚═══╝   ╚═════╝ ╚═╝╚═════╝     ╚═════╝ ╚═╝     ╚═╝
echo.
echo     ══════════════════════════════════════════════════════
echo                    DPI ATLATMA ARACI v1.1
echo     ══════════════════════════════════════════════════════
echo.

tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo     [○] DURUM: VoidDPI ÇALIŞIYOR
) else (
    echo     [○] DURUM: VoidDPI DURDURULDU
)
    echo.
    echo     ┌─────────────────────────────────────────────────┐
    echo     │  [1] VoidDPI'yi Başlat                          │
    echo     │  [2] Sistem Bilgisi                             │
    echo     │  [3] Hakkında                                   │
    echo     │  [4] Çıkış                                      │
    echo     └─────────────────────────────────────────────────┘
)

echo.
set /p "choice=     Seçiminizi yapın (1-4): "

if "%choice%"=="1" goto OPTION1
if "%choice%"=="2" goto OPTION2
if "%choice%"=="3" goto OPTION3
if "%choice%"=="4" goto EXIT
echo     [!] Geçersiz seçim! Lütfen 1-4 arasında bir sayı girin.
timeout /t 2 >nul
goto MAIN_MENU

:OPTION1
:: VoidDPI durumunu kontrol et
    echo.
    echo     [+] VoidDPI başlatılıyor...
    echo.
    
    :: VoidDPI'yi başlat
    start "" /min "%~dp0script.vbs" -1
    
    :: Başlatma kontrolü
    timeout /t 3 >nul
    tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
    if %errorlevel%==0 (
        echo     [✓] VoidDPI başarıyla başlatıldı!
    ) else (
        echo     [!] Başlatma başarısız! Farklı yöntemler deneniyor...
    )
    echo.
    pause
    goto MAIN_MENU
)

:OPTION2
:: Durum bilgisi
cls
echo     ┌─────────────────────────────────────────────────┐
echo     │               SİSTEM BİLGİSİ                    │
echo     └─────────────────────────────────────────────────┘
echo     • İşletim Sistemi: %OS%
echo     • Bilgisayar Adı: %COMPUTERNAME%
echo     • Kullanıcı: %USERNAME%
echo     • Tarih: %DATE%
echo     • Saat: %TIME:~0,5%
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do echo     • IP Adresi:%%i
echo.

tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo     ┌─────────────────────────────────────────────────┐
    echo     │              VoidDPI DURUM BİLGİSİ              │
    echo     └─────────────────────────────────────────────────┘
    
    :: Process bilgileri
    for /f "skip=3 tokens=2,5" %%a in ('tasklist /fi "imagename eq VoidDpi.exe"') do (
        echo     • Process ID: %%a
        echo     • Bellek Kullanımı: %%b
    )
    
    echo     • Durum: AKTİF
    echo     • Başlatma Zamanı: Program başlatıldığından beri aktif
    echo     • Mod: Standart
    echo.
) else (
    echo     ┌─────────────────────────────────────────────────┐
    echo     │              VoidDPI DURUM BİLGİSİ              │
    echo     └─────────────────────────────────────────────────┘
    echo     • VoidDPI Durumu: DURDURULDU
    echo.
)
pause
goto MAIN_MENU

:OPTION3
cls
echo.
echo     ┌─────────────────────────────────────────────────┐
echo     │                   HAKKINDA                      │
echo     └─────────────────────────────────────────────────┘
echo     • Program: VoidDPI
echo     • Versiyon: 1.1
echo     • Geliştirici: DrowBlackTw
echo     • Açıklama: DPI tabanlı internet sansürünü aşmak
echo                 için geliştirilmiş araç
echo.
echo     • Kullanım: Ctrl+c = Dpi'ı Kapat
echo     • Gizli Mod: Arka planda çalışır, pencere açmaz
echo     • Kontrol: Bu launcher ile durumunu kontrol edebilirsiniz
echo.
echo     ┌─────────────────────────────────────────────────┐
echo     │              KULLANIM İPUÇLARI                  │
echo     └─────────────────────────────────────────────────┘
echo     • Ctrl+C ile programı kapatabilirsiniz
echo     • Bu launcher ile kontrol edilebilir
echo.
echo.
pause
goto MAIN_MENU

:EXIT
:: Çıkıştan önce VoidDPI kontrol et
tasklist /fi "imagename eq VoidDpi.exe" 2>nul | find /i "VoidDpi.exe" >nul
if %errorlevel%==0 (
    echo.
    set /p "confirm=VoidDPI arka planda çalışıyor. Kapatmak istiyor musunuz? (E/H): "
    if /i "!confirm!"=="E" (
        echo.
        echo     [-] VoidDPI kapatılıyor...
        taskkill /f /im VoidDpi.exe >nul 2>&1
        echo     [✓] VoidDPI kapatıldı!
	if %errorlevel%==0 (
	    echo     [✓] Tüm VoidDPI süreçleri kapatıldı!
	) else (
	    echo     [✗] VoidDPI süreçleri kapatılamadı. Lütfen yönetici olarak çalıştırın veya el ile kapatın.
	)
        timeout /t 1 >nul
    ) else if /i "!confirm!"=="e" (
        echo.
        echo     [-] VoidDPI kapatılıyor...
        taskkill /f /im VoidDpi.exe >nul 2>&1
        echo     [✓] VoidDPI kapatıldı!
	if %errorlevel%==0 (
	    echo     [✓] Tüm VoidDPI süreçleri kapatıldı!
	) else (
	    echo     [✗] VoidDPI süreçleri kapatılamadı. Lütfen yönetici olarak çalıştırın veya el ile kapatın.
	)
        timeout /t 1 >nul
    ) else (
        goto MAIN_MENU
    )
)

echo.
echo     [i] VoidDPI Launcher kapatılıyor...
echo     [i] İyi günler!
timeout /t 2 >nul
exit /b 0