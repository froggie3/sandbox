# ����PowerShell�X�N���v�g�� -windowstyle hidden �I�v�V���������Ď��s�����ׂ�

# �ΏۃA�v���P�[�V�������o�b�N�O���E���h�ŋN��������@
# https://cheshire-wara.com/powershell/ps-cmdlets/system-service/start-process-window/

# VBoxManage list vms �ŋN���\�� VM ���m�F�\


$vBoxDirectory = 'C:\Program Files\Oracle\VirtualBox\'
$favoriteVMname = 'yokkin.com (21.10)'

$startup = "C:\Program Files (x86)\ASRock Utility\Phantom Gaming Tuning\Bin\PGTU.exe", "C:\Program Files\AMD\RyzenMaster\bin\AMD Ryzen Master.exe"


function startupAppHidden {
    for ($i = 0; $i -lt $startup.Count; $i++) {
        Start-Process $startup[$i] -WindowStyle Minimized
    }
}

startupAppHidden

function startVBox {
    cd $vBoxDirectory
    VBoxManage startvm $favoriteVMname --type headless
}

startvBox

