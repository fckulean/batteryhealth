# BatteryHealth
Quick battery health checker script for Windows 10/11 laptops

## Installation - Method 1
1. Clone repository
- Use `git clone https://github.com/fckulean/batteryhealth`
- Or `Code > Download ZIP` and extract it.
- Or [just click here to download](https://github.com/fckulean/batteryhealth/archive/refs/heads/main.zip).
2. Right click on `batteryhealth.ps1` > Run with PowerShell

## Installation - Method 2
1. Download pre-compiled `.exe` binary or `.ps1` script from Releases
2. Run the executable file or right click on `.ps1` script > Run with PowerShell

## Compile it yourself
1. Clone repository: `git clone https://github.com/fckulean/batteryhealth`
2. Install [PS2EXE](https://github.com/MScholtes/PS2EXE): `inmo ps2exe`
3. Compile with `Invoke-PS2EXE -inputFile batteryhealth.ps1 -outputFile BatteryHealth.exe`
