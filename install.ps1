Write-Host "Installing..." -ForegroundColor Green

# à¸•à¸´à¸”à¸•à¸±à¹‰à¸‡à¹„à¸›à¸—à¸µà¹ˆ LGHUB
$lghubPath = "C:\Program Files\LGHUB"

if (-not (Test-Path $lghubPath)) {
    Write-Host "Logitech G HUB not found at: $lghubPath" -ForegroundColor Red
    exit 1
}

$dest = Join-Path $lghubPath "version.dll"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Aaawdws/Create-repository8/main/version.dll" -OutFile $dest

Write-Host "Done. Installed to: $dest" -ForegroundColor Green
