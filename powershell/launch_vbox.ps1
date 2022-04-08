# directry for virtualbox installed
[string] $global:vBoxDirectory  = 'C:\Program Files\Oracle\VirtualBox\'

# name for virtual machine you prefer
[string] $global:favoriteVMName = 'yokkin.com (21.10)'

# UUID for virtual machine that can be checked when you type "VBoxManage list vms"
[string] $global:favoriteVMId   = '89074768-1d3c-42ed-b9d9-919bf4217a18'


function VMExists {
    # variable for command output
    $result = vboxmanage list vms | Select-String -Pattern $global:favoriteVMId
    
    # check if a virtual machine really exists
    if ($result -match $global:favoriteVMId ) {
        return $true
    } else {
        return $false
    }
}


function VMLaunched {
    # check if a virtual machine is already in the process list
    try {
        Get-Process -Name VBoxHeadless -ErrorAction Stop
        return $true
    } catch {
        return $false
    }
}

function launchVBox {
    try {
        Set-Location $global:vBoxDirectory
        VBoxManage startvm $global:favoriteVMName --type headless
        
    } catch {
        Write-Host "Failed to launch virtual machine."
    }
}

function suspendVBox {
    try {
        Set-Location $global:vBoxDirectory
        VBoxManage controlvm $global:favoriteVMName savestate
        
    } catch {
        Write-Host "Failed to suspend virtual machine."
    }
}

function startvBox {
    if (VMExists) {
        if (VMLaunched) {
            suspendVBox
            # Write-Host "Failed to launch the machine because VBox instance already exists."
            exit
        } else {
            Write-Host "Launching virtual machine."
            launchVBox
            exit
        }
    } else {
        Write-Host "Failed to launch the machine because it was not found. `n" +
                   "Is there really a machine named such?"
        exit
    }
}

startvBox

