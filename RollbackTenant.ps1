<###############################################>
Update-M365DSCModule

#region Banner
$Refresh = [char]::ConvertFromUtf32(0x1F504)
$GreenCheckmark = [char]::ConvertFromUtf32(0x2705)
$stringRefresh = ""
for ($i = 0; $i -lt 25; $i++)
{
    $stringRefresh += $Refresh
}
#endregion

#region Update Rollback Config
$content = Get-Content "C:\M365DSC\AADUser.ps1" | Out-String
$content = $content.Replace('"Present"', '"Absent"')
$content = $content.Replace("Configuration AADUser", "Configuration Rollback")
$content = $content.Replace("AADUser -ConfigurationData", "Rollback -ConfigurationData")
$content | Out-File "C:\M365DSC\Rollback\RollbackUsers.ps1" -Force

$content = Get-Content "C:\M365DSC\AADDemo.ps1" | Out-String
$content = $content.Replace('"Present"', '"Absent"')
$content = $content.Replace("Configuration AADDemo", "Configuration Rollback")
$content = $content.Replace("AADDemo -ConfigurationData", "Rollback -ConfigurationData")
$content | Out-File "C:\M365DSC\Rollback\RollbackConfig.ps1" -Force
#endregion

$Global:Target = Get-Credential -Message "Enter Target Tenant Credentials"
Set-M365DSCAgentCertificateConfiguration -GeneratePFX -Password <.....> -ForceRenew

#region Apply Rollback
Write-Host "`r`n$stringRefresh"
Write-Host "            Rolling Back Configuration"
Write-Host $stringRefresh

& "C:\M365DSC\Rollback\RollbackUsers.ps1" $Global:Target | Out-Null
Start-DscConfiguration -Path "C:\M365DSC\Rollback" -Wait -Verbose -Force

Write-Host "Rolling back Users on target tenant" -NoNewline
Start-Sleep -Seconds 2
$i = 2
while ((Get-DSCLocalConfigurationManager).LCMState -eq "Busy")
{
    Write-Host "." -NoNewline
    $i = $i + 2
    Start-Sleep -Seconds 2
}
Write-Host $GreenCheckMark

& "C:\M365DSC\Rollback\RollbackConfig.ps1" $Global:Target | Out-Null
Start-DscConfiguration -Path "C:\M365DSC\Rollback" -Wait -Verbose -Force

Write-Host "Rolling back configuration on target tenant" -NoNewline
Start-Sleep -Seconds 2
$i = $i + 2
while ((Get-DSCLocalConfigurationManager).LCMState -eq "Busy")
{
    Write-Host "." -NoNewline
    $i = $i + 2
    Start-Sleep -Seconds 2
}
Write-Host $GreenCheckMark
Write-Host "Rollback took {" -NoNewline
Write-Host "$i Seconds" -ForegroundColor Cyan -NoNewline
Write-Host "}"
#endregion