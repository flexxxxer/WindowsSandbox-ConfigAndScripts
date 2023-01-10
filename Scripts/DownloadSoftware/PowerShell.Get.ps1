param([String] $OutFolder)

if ($OutFolder.Length -eq 0 -or -not (Test-Path -Path $OutFolder)) {
    $OutFolder = "$PSScriptRoot\..\..\CachedExes\"
}

$linkToDownload = "https://github.com/PowerShell/PowerShell/releases/download/v7.3.0/PowerShell-7.3.0-win-x64.msi"
$fileToSave = "powershell-7.3.0.msi"
$ProgressPreference = 'SilentlyContinue'
"Fetching PowerShell..." | Write-Output
Invoke-RestMethod -Uri $linkToDownload -OutFile ($OutFolder + $fileToSave)