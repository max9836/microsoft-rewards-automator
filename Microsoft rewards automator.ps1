function Run {
    param(
        [Parameter(Mandatory=$true)]
        [int]$Searches,
        [Parameter(Mandatory=$false)]
        [string]$Path,
        [Parameter(Mandatory=$true)]
        [int]$Browser_Load_time,
        [Parameter(Mandatory=$false)]
        [int]$Random_length
    )
    if($Searches -le 0 -or $Searches -gt 100) {
        Write-Error -Exception Stop -Message "Searches cannot be greater than 100 or less than 0" -TargetObject $Searches
        break;
    }
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
    $FILE_DOC = "MICROSOFT_REWARD_AUTOMATOR_APP_OPERATION`n"
    $FILE_DOC += Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $FILE_DOC += "`n"
    Start-Process msedge -ArgumentList "https://www.bing.com"
    Start-Sleep -Seconds $Browser_Load_time
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null
    if($Random_length -gt 100 -or $Random_length -le 0) {
        Write-Error -Message "Random length cannot be greater than 100 or less than 0" -ErrorId "random_length variable error" -TargetObject $Random_length
        $change_to_1 = Get-Random -Minimum 0 -Maximum 100
        Write-Output "Already changed random length to $change_to_1"
        $Random_length = $change_to_1
    }
    if($Random_length -eq "") {
        $Random_length = Get-Random -Minimum 0 -Maximum 100
    }
    $randomQueries = 1..$Searches | ForEach-Object {
        "MICROSOFT_REWARD_AUTOMATOR_APP_OPERATION?SEARCH=$(Get-RandomString -length $Random_length)"
    }
    $Count = 0;
    foreach ($query in $randomQueries) {
        $Count += 1;
        $FILE_DOC += "[$Count]:MICROSOFT REWARD AUTOMATOR APP OPERATION::$query`n"
        [System.Windows.Forms.SendKeys]::SendWait("/")
        [System.Windows.Forms.SendKeys]::SendWait($query)
        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
        Start-Sleep -Seconds 3
    }
    Stop-Process -Name msedge
    $answer = Read-Host -Prompt "Output log? (Y/N)"
    if ($answer -eq "Y" -or $answer -eq "y") {
        if ($Path -eq "") {
            $Path = Read-Host "Please input file path"
        }
        $File_name = "Microsoft reward automator output ("
        $File_name += Get-Date -Format "yyyy-MM-dd"
        $File_name += ").txt"
        New-Item -ItemType "File" -Name $File_name -Value $FILE_DOC -Path $Path -Force
        Write-Information -MessageData ("The output log has been successfully saved in the specified path, $Path, as $File_name.")
    } elseif ($answer -eq "N" -or $answer -eq "n") {
    } else {
        $answer = Read-Host -Prompt "Output log? (Y/N)"
    }
    $FILE_DOC += "--DONE ($Count/$Searches)--"
    Write-Output "`n"
    Write-Output $FILE_DOC
}
