Set fso = CreateObject("Scripting.FileSystemObject")
cmdPath = fso.GetParentFolderName(WScript.ScriptFullName) & "\StartVoidDpi.cmd"
CreateObject("Shell.Application").ShellExecute cmdPath, "", "", "runas", 1