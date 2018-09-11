set-location c:
Start-Transcript -OutputDirectory "C:\Support\transcripts\" -NoClobber
new-item alias:np -value "C:\Program Files\Notepad++\notepad++.exe"
#Looking up scripts to output in write host
$items = Get-ChildItem -Path "C:\Support\Scripts\" -filter "*.ps1"
#Directory where my scripts are stored
$psdir = "C:\Support\Scripts\"  
# allow scripts to be ran as they are unsigned
Unblock-File "${psdir}\*.ps1" | % {.$_} 
# load all 'autoload' scripts
Get-ChildItem "${psdir}\*.ps1" | % {.$_} 
#setting root location for powershell window
set-location c:\
#Setting colour (used to identify when running as admin)
#$console = $host.UI.RawUI
#$console.ForegroundColor = "White"
#$console.BackgroundColor = "black"
clear-host