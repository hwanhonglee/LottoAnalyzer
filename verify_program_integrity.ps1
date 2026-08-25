
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$manifest = Join-Path $root "SHA256SUMS.txt"
Add-Type -AssemblyName PresentationFramework
if (-not (Test-Path $manifest)) {
    [System.Windows.MessageBox]::Show("SHA256SUMS.txt를 찾을 수 없습니다.", "Lotto Analyzer")
    exit 1
}
$failures = @()
foreach ($line in Get-Content -Encoding UTF8 $manifest) {
    if ($line -match '^([0-9a-fA-F]{64})  (.+)$') {
        $expected = $matches[1].ToLower()
        $relative = $matches[2].Replace('/', '\\')
        $path = Join-Path $root $relative
        if (-not (Test-Path $path)) { $failures += "MISSING: $relative"; continue }
        $actual = (Get-FileHash -Algorithm SHA256 -Path $path).Hash.ToLower()
        if ($actual -ne $expected) { $failures += "CHANGED: $relative" }
    }
}
if ($failures.Count -eq 0) {
    [System.Windows.MessageBox]::Show("프로그램 파일 SHA-256 검증이 정상입니다.", "Lotto Analyzer")
    exit 0
}
[System.Windows.MessageBox]::Show("무결성 검증 실패:`n`n" + ($failures -join "`n"), "Lotto Analyzer")
exit 2
