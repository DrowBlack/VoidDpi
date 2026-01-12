Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = CreateObject("WScript.Shell")

' VoidDpi.exe dosyasının yolunu oluştur
exePath = fso.GetParentFolderName(WScript.ScriptFullName) & "\VoidDpi\VoidDpi.exe"

' VoidDpi.exe'yi goodbyedpi parametreleri ile gizli modda çalıştır
WshShell.Run """" & exePath & """ -5 --set-ttl 5 --dns-addr 77.88.8.8 --dns-port 1253 --dnsv6-addr 2a02:6b8::feed:0ff --dnsv6-port 1253", 0, False