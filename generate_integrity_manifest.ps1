
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$outFile = Join-Path $root "SHA256SUMS.txt"
$excluded = @("lotto.sqlite", "lotto_analysis_baseline.sqlite", "SHA256SUMS.txt", "startup_error.log")
$files = Get-ChildItem -Path $root -Recurse -File | Where-Object {
    $excluded -notcontains $_.Name -and
    $_.FullName -notmatch "\\backups\\" -and
    $_.FullName -notmatch "\\logs\\"
}
$lines = foreach ($file in $files) {
    $hash = (Get-FileHash -Algorithm SHA256 -Path $file.FullName).Hash.ToLower()
    $relative = $file.FullName.Substring($root.Length + 1).Replace("\\", "/")
    "$hash  $relative"
}
$lines | Set-Content -Encoding UTF8 $outFile
Write-Host "Created $outFile"
