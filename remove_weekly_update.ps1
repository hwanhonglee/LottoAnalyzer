
$ErrorActionPreference = "SilentlyContinue"
$taskName = "Lotto Analyzer Weekly Update"
Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show(
    "주간 자동 업데이트 작업을 제거했습니다.",
    "Lotto Analyzer"
)
