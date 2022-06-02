Invoke-WebRequest https://raw.githubusercontent.com/dellemcsql/dso/main/release/downloads/v1.0.0/dso_windows_x64.zip -OutFile $env:USERPROFILE\Downloads\dso_windows_x64.zip
Expand-Archive -LiteralPath $env:USERPROFILE\Downloads\dso_windows_x64.zip -DestinationPath $env:USERPROFILE\Downloads\dso_windows_x64 -Force
mkdir $env:USERPROFILE/.dso > $null
Copy-Item -Path $env:USERPROFILE\Downloads\dso_windows_x64\dso.exe -Destination $env:USERPROFILE/.dso/dso.exe
$pth = join-path $env:USERPROFILE ".dso"; $Env:PATH = "$pth;$Env:PATH" 
dso completion powershell | Out-String | Invoke-Expression
Write-Host "DSO Installation completed.." 