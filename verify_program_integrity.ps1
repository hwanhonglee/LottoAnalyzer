$ErrorActionPreference = "Stop"

$root = [System.IO.Path]::GetFullPath(
    (Split-Path -Parent $MyInvocation.MyCommand.Path)
)
$rootPrefix = $root.TrimEnd('\') + '\'
$manifest = Join-Path $root "SHA256SUMS.txt"

Add-Type -AssemblyName PresentationFramework

if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) {
    [System.Windows.MessageBox]::Show(
        "SHA256SUMS.txt를 찾을 수 없습니다.",
        "Lotto Analyzer"
    )
    exit 1
}

$failures = [System.Collections.Generic.List[string]]::new()
$seenPaths = [System.Collections.Generic.HashSet[string]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
$entryCount = 0
$hasExecutable = $false

foreach ($line in Get-Content -LiteralPath $manifest -Encoding UTF8) {
    if ([string]::IsNullOrWhiteSpace($line)) {
        continue
    }
    if ($line -notmatch '^([0-9a-fA-F]{64})  (.+)$') {
        $failures.Add("INVALID MANIFEST LINE: $line")
        continue
    }

    $expected = $matches[1].ToLowerInvariant()
    $relative = $matches[2].Replace('/', '\')
    if ([System.IO.Path]::IsPathRooted($relative)) {
        $failures.Add("UNSAFE PATH: $relative")
        continue
    }

    $path = [System.IO.Path]::GetFullPath((Join-Path $root $relative))
    if (-not $path.StartsWith($rootPrefix, [System.StringComparison]::OrdinalIgnoreCase)) {
        $failures.Add("UNSAFE PATH: $relative")
        continue
    }
    if (-not $seenPaths.Add($path)) {
        $failures.Add("DUPLICATE: $relative")
        continue
    }

    $entryCount += 1
    if ($relative -ieq "LottoAnalyzer.exe") {
        $hasExecutable = $true
    }
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $failures.Add("MISSING: $relative")
        continue
    }

    $actual = (Get-FileHash -Algorithm SHA256 -LiteralPath $path).Hash.ToLowerInvariant()
    if ($actual -ne $expected) {
        $failures.Add("CHANGED: $relative")
    }
}

if ($entryCount -eq 0) {
    $failures.Add("EMPTY MANIFEST")
}
if (-not $hasExecutable) {
    $failures.Add("LottoAnalyzer.exe is not listed in the manifest.")
}

if ($failures.Count -eq 0) {
    [System.Windows.MessageBox]::Show(
        "프로그램 파일 SHA-256 검증이 정상입니다.",
        "Lotto Analyzer"
    )
    exit 0
}

[System.Windows.MessageBox]::Show(
    "무결성 검증 실패:`n`n" + ($failures -join "`n"),
    "Lotto Analyzer"
)
exit 2
