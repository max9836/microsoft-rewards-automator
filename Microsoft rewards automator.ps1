# By Max9836
# https://github.com/max9836/microsoft-rewards-automator
# Begin - Initial settings
$Show_microsoft_rewards_website = $true
$Searches = 30
$Random_length = 64
$wait_sec = 3
# END - Initial settings
function Get-RandomString {
    param(
        [int]$length
    )
    $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    $randomString = ''
    for ($i = 0; $i -lt $length; $i++) {
        $randomString += $characters[(Get-Random -Minimum 0 -Maximum $characters.Length)]
    }
    return $randomString
}
Start-Process msedge -ArgumentList "https://www.bing.com"
Start-Sleep -Seconds 3
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null
$randomQueries = 1..$Searches | ForEach-Object {
"MICROSOFT_REWARD_AUTOMATOR_APP_OPERATION?SEARCH=$(Get-RandomString -length $Random_length)"
}
$Count = 0;
foreach ($query in $randomQueries) {
$Count += 1;
[System.Windows.Forms.SendKeys]::SendWait("/")
[System.Windows.Forms.SendKeys]::SendWait($query)
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds $wait_sec
}
if($Show_microsoft_rewards_website -eq $true){
Stop-Process -name msedge
Start-Sleep -Seconds $wait_sec
start-process msedge -ArgumentList "https://rewards.bing.com/"
Write-Host "Complete your daily Bing searches to unlock your daily Microsoft Rewards search bonus!"
}else{
Stop-Process -Name msedge
}
