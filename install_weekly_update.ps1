
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$exe = Join-Path $root "LottoAnalyzer.exe"

if (-not (Test-Path $exe)) {
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show(
        "LottoAnalyzer.exe를 찾을 수 없습니다.",
        "Lotto Analyzer"
    )
    exit 1
}

$taskName = "Lotto Analyzer Weekly Update"

$action = New-ScheduledTaskAction `
    -Execute $exe `
    -Argument "--update-only" `
    -WorkingDirectory $root

# Lotto draw is Saturday evening; Sunday morning gives the source time to refresh.
$trigger = New-ScheduledTaskTrigger `
    -Weekly `
    -DaysOfWeek Sunday `
    -At 9:00AM

$settings = New-ScheduledTaskSettingsSet `
    -StartWhenAvailable `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries

Register-ScheduledTask `
    -TaskName $taskName `
    -Action $action `
    -Trigger $trigger `
    -Settings $settings `
    -Description "Check Lotto 6/45 data every Sunday and append missing draws." `
    -Force | Out-Null

Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show(
    "매주 일요일 오전 9시에 DB를 자동 확인하도록 등록했습니다.`n앱을 실행할 때도 자동으로 최신 회차를 확인합니다.",
    "Lotto Analyzer"
)
