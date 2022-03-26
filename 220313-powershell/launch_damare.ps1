
function damareStart{
    chcp 65001
    Set-Location C:\mnt1\utl\Damare
    yarn start
}

Write-Output "Launching damare..."

damareStart