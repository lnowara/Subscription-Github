$OldVersion="1.0.0.0"
$NewVersion="1.0.0.1"

$Servicetier="BC220"
$AppName="Subscription_Github"
$Path="C:\Temp\BC TechDays_" + $AppName + "_" + $NewVersion + ".app"

Import-Module 'C:\Program Files\Microsoft Dynamics 365 Business Central\220\Service\NavAdminTool.ps1'

if (Get-NAVAppInfo -ServerInstance $Servicetier | where Name -Like "Designer*") {
    $AppName = Get-NAVAppInfo -ServerInstance $Servicetier | where Name -Like "Designer*" | Select-Object -ExpandProperty Name
    Uninstall-NAVApp  -ServerInstance $Servicetier -Name $AppName
}

#Uninstall-NAVApp  -ServerInstance $Servicetier -Name $AppName -Version $OldVersion #Not necessary on upgrade
# Publish app to database
Publish-NAVApp -ServerInstance $Servicetier -Path $Path -SkipVerification
Sync-NAVApp -ServerInstance $Servicetier -Name $AppName -version $NewVersion -Mode ForceSync
Start-NAVAppDataUpgrade -ServerInstance $Servicetier -Name $AppName -Version $NewVersion

if (Get-NAVAppInfo -ServerInstance $Servicetier | where Name -Like "Designer*") {
    $AppName = Get-NAVAppInfo -ServerInstance $Servicetier | where Name -Like "Designer*" | Select-Object -ExpandProperty Name
    Install-NAVApp  -ServerInstance $Servicetier -Name $AppName
}

Unpublish-NAVApp -ServerInstance $Servicetier -Name $AppName -Version $OldVersion

# Install license in tenant without restart
Get-NAVServerInstance | Where-Object {$_.Version -Match '14.0' -and $_.State -eq 'Running' | Import-NAVServerLicense -LicenseFile "C:\temp\fin.flf"}



