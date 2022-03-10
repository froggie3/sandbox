
# AMD Ryzen Master, VBoxHeadless, AsrSvc, , , 

$kills = 'Widgets', 'YourPhone', 'YourPhoneServer'

for ($j = 0; $j -lt $kills.Count; $j++) {
    Get-Process -Name $kills[$j]
}