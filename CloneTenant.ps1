<###############################################>
Update-M365DSCModule
$WarningPreference = "SilentlyContinue"

#region Banners
$Package = [Char]::ConvertFromUtf32(0x1F4E6)
$Rocket = [Char]::ConvertFromUtf32(0x1F680)
$GreenCheckmark = [char]::ConvertFromUtf32(0x2705)

$stringPackage = ""; $stringRocket = ""
for ($i = 0; $i -lt 25; $i++)
{
    $stringPackage += $Package
    $stringRocket += $Rocket
}
#endregion

$Global:Source = Get-Credential -Message "Enter Source Tenant Credentials"
Set-M365DSCAgentCertificateConfiguration -GeneratePFX -Password <.........> -ForceRenew

#region Export
Write-Host "`r`n$stringPackage"
Write-Host "            Exporting Source Tenant"
Write-Host $stringPackage
Write-Host "Loading Depencencies. This may take a few seconds..."
Export-M365DSCConfiguration -Credential $Global:Source `
                            -Components @("AADUser") `
                            -Path "C:\M365DSC" `
                            -FileName "AADUser.ps1" 
                            
Export-M365DSCConfiguration -Credential $Global:Source `
                            -Components @("AADApplication", "AADGroup") `
                            -Path "C:\M365DSC" `
                            -FileName "AADDemo.ps1" 
                            
#endregion

$Global:Target = Get-Credential -Message "Enter Target Tenant Credentials"


#region Clone
Write-Host "`r`n"
Write-Host $stringRocket
Write-Host "              Cloning Source Tenant"
Write-Host $stringRocket

& "C:\M365DSC\AADUser.ps1" $Global:Target | Out-Null
Start-DscConfiguration -Path "C:\M365DSC\AADUser" -Wait -Verbose -Force

Write-Host "Restoring Users on target tenant" -NoNewline
Start-Sleep -Seconds 2
$i = 2
while ((Get-DSCLocalConfigurationManager).LCMState -eq "Busy")
{
    Write-Host "." -NoNewline
    $i = $i + 2
    Start-Sleep -Seconds 2
}
Write-Host $GreenCheckMark

& "C:\M365DSC\AADDemo.ps1" $Global:Target | Out-Null
Start-DscConfiguration -Path "C:\M365DSC\AADDemo" -Wait -Verbose -Force

Write-Host "Applying exported configuration on target tenant" -NoNewline
Start-Sleep -Seconds 2
$i = 2
while ((Get-DSCLocalConfigurationManager).LCMState -eq "Busy")
{
    Write-Host "." -NoNewline
    $i = $i + 2
    Start-Sleep -Seconds 2
}
Write-Host $GreenCheckMark
Write-Host "Cloning took {" -NoNewline
Write-Host "$i Seconds" -ForegroundColor Cyan -NoNewline
Write-Host "}"
#endregion