$processname = VBoxHeadless

if (Get-Process -Name $processname) {
    echo ("Found" + $processname)
}