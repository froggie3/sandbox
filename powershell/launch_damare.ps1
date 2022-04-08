function damareStart{
    [string] $damareDirectory = 'C:\mnt1\utl\Damare'

    chcp 65001
    Set-Location $damareDirectory
    yarn start
}

damareStart