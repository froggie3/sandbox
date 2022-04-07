# This powerShell should be executed with the option: -windowstyle hidden

# 対象アプリケーションをバックグラウンドで起動する方法
# https://cheshire-wara.com/powershell/ps-cmdlets/system-service/start-process-window/

# To check VM currently available: VBoxManage list vms



# $damareDirectory = 'C:\mnt1\utl\Damare'

# [string] $startup = "C:\Program Files (x86)\ASRock Utility\Phantom Gaming Tuning\Bin\PGTU.exe", "C:\Program Files\AMD\RyzenMaster\bin\AMD Ryzen Master.exe"

<#
function damareStart{
    chcp 65001
    Set-Location $damareDirectory
    yarn start
}

damareStart
#>


<#
try {
    function startupAppHidden {
        for ($i = 0; $i -lt $startup.Count; $i++) {
            Start-Process $startup[$i] -WindowStyle Minimized
        }
    }
    startupAppHidden
} catch {
    Write-Output "Something went wrong. Apps was not launched." 
}
#>

Write-Output "Verifying if the specified machine exists."

function startvBox {
    [string] $vBoxDirectory = 'C:\Program Files\Oracle\VirtualBox\'
    [string] $favoriteVMId = '89074768-1d3c-42ed-b9d9-919bf4217a18'     # yokkin.com (21.10)
    [string] $result = Get-Process -Name VBoxHeadless

    if ($null -eq $result) {

        try {

            Set-Location $vBoxDirectory
            VBoxManage startvm $favoriteVMId --type headless

        } catch {

            Write-Output "Failed to launch the virtual machine."

        }

    } else {
        
        # VM exists in the process
        Write-Host 'VBox instance already exists.';

    } 
}

startvBox

exit

