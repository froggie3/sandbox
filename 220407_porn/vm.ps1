
$results = vboxmanage list vms
$array = $results.Split(" ")


[string] $favoriteVMId = '89074768-1d3c-42ed-b9d9-919bf4217a18'     # yokkin.com (21.10)

function isFoundVM {

    # 1行づつ処理する
    foreach ( $i in $array ) {
        if (Write-Output $i | Select-String -Pattern $favoriteVMId) {
            
            Write-Output "VM was found. Now launching..."

        } else {
            break
        }
    }

}

<#
if (isFoundVM) {

    # 起動処理

} else {

    Write-Output "VM not found."

}
#>