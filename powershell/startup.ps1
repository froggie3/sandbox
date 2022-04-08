# PowerShell script for startup application

[String] $currentDirectory = "C:\htdocs\sandbox\powershell"

Set-Location $currentDirectory

# Virtual Machine
.\launch_vbox.ps1

# Utilities
# .\launch_utilities.ps1