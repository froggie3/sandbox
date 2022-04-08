# This powerShell should be executed with the option: -windowstyle hidden
# https://cheshire-wara.com/powershell/ps-cmdlets/system-service/start-process-window/


try {
    function startupAppHidden {

        [string] $startup =
        "C:\Program Files (x86)\ASRock Utility\Phantom Gaming Tuning\Bin\PGTU.exe",
        "C:\Program Files\AMD\RyzenMaster\bin\AMD Ryzen Master.exe"

        for ($i = 0; $i -lt $startup.Count; $i++) {
            Start-Process $startup[$i] -WindowStyle Minimized
        }
    }
    startupAppHidden
} catch {
    Write-Host "Something went wrong. Apps was not launched." 
}

