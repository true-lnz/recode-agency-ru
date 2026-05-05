$ErrorActionPreference = "Stop"

$port = 8000
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Serving $root at http://localhost:$port/"
Set-Location -LiteralPath $root
python -m http.server $port
