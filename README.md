# Microsoft reward cheater
This PowerShell script (Microsoft-reward-cheater.ps1) automates Bing searches with random queries to potentially earn Microsoft Rewards points. It features:

* Random query generation for search variety.
* Keystroke simulation to perform searches automatically.
* Optional logging of search activity.
* User input for number of searches, browser loading time, and optional log file path.

> [!WARNING]
> **DO NOT USE OTHER APPLICATION WHILE THIS SCRIPT IS RUNNING.** <br>
> This script uses keyboard typing to avoid getting noticed by the browser, using other applications while this script will warn will cause the text typed in the wrong place, and finally cause a big mess.

# Introduction:
This PowerShell script automates Bing searches with random queries to potentially earn Microsoft Rewards points. It includes optional logging to track progress.

## Key Features:
* Generates random search queries for diversity.
* Simulates keystrokes to perform searches automatically.
* Allows optional logging of search activity.

# Requirements & Usages:

1. Edge Browser: The script launches Microsoft Edge to perform searches that can earn Microsoft Reward points.
2. Windows and Mac operation system: This PowerShell script can only be executed in a Windows PowerShell terminal or on a Mac using a terminal emulator.

# Useage:

## Syntax
```
Run -Searches [Number of searches] -Path [Log file path] -Browser_Load_time [Load time in seconds] -Random_length [Random query length]
```
### Searches
* Mandatory: True
* Input type: [int] Number
* Description: Amount of Bing searches to perform (range: 1-100).
> [!TIP]
> There are two levels in Microsoft Reward: Level 1 and Level 2, here are the major differences that relate to the points:
> | Limitation | Level 1 | Level 2 |
> | ---------- | ------- | ------- |
> | Daily Bing search point limit (3 points per search) | 30 | 150 |
>
> So, the input of this should be either 10 (30/3) or 30 (150/3)
### Path
* Mandatory: False (optional)
* Input type: [String] String (Text)
* Description: Path to save the log file. If not provided, you'll be prompted for input.
> [!TIP]
> You do not have to write an input to this parameter even if you need a log file. There will be an input area after your request for an output log.
### Browser_Load_time
* Mandatory: True
* Input type: [int] Number
* Description: Time in seconds to wait for the browser to load (The time gap between the searches to run and the launch of Microsoft Edge).
> [!TIP]
> The time depends on the speed of your CPU and your WIFI connection's stability.

### Random_length 
* Mandatory: False (Optional)
* Input type: [int] Number
* Description: Length of random search queries (range: 1-100). If not provided, a random value between 1-100 will be used.
> [!TIP]
> We suggest that the random length is between 30 to 60. 
## How to run it in Powershell
### Step 1 
  **Open PowerShell with administrator privileges**<br>
  1.  Right-click the Windows icon on the taskbar.<br>
  2.  Click "Windows Terminal (Admin)."
> [!NOTE]
> If the execution policy has already been bypassed in your computer, you may skip this step.

### Step 2
  **Bypass execution policy**<br>
```
set-executionpolicy -executionpolicy bybass
```
> [!NOTE]
> If execution policy has already been bypassed in your computer, you may skip this step.

> [!CAUTION]
> In order to bypass execution policy, you will need to paste this code in Powershell with administrator privileges.
### Step 3
**Run the main function**<br>
```
powershell -command "& { . <path>\Microsoft-Reward-cheater.ps1; Run}"
```
> [!IMPORTANT]
> You'll need to replace ```<path>``` with the actual path to your file.

> [!NOTE]
> To add parameters, you will need to type it after the command name "Run" like this:
> ```
> Run -Searches [Number of searches] -Path [Log file path] -Browser_Load_time [Load time in seconds] -Random_length [Random query length]
> ```

> [!NOTE]
> It is important to know what will be happening in this step. For more, please look at the section of [analyze the program](#Analyze-the-program).

### Step 4
**Set the execution policy back to restricted**
```
set-executionpolicy -executionpolicy restricted
```
> [!CAUTION]
> To set the execution policy, you will need administrator privileges.

> [!NOTE]
> You can choose not to do this step. However, we recommend you do it because hackers may perform specific functions that cause harm to your device easily without permission.
## Usage example
This is one of the examples of using this script

Run 30 searches after 3 seconds of load time for the Edge browser.
```
powershell -command "& { . <path>\Microsoft-Reward-cheater.ps1; Run -Searches 30 -Browser_Load_time 3}"
```

-----------------------------------------
You do not have to look at the sections below unless you have a great interest in this program

# Analyze the program
These things are happening while the program runs:
#### 1. Microsoft Edge is launched and navigated to "https://www.Bing.com" by this command `Start-Process msedge -ArgumentList "https://www.bing.com"`. After that, a few seconds(depending on your input)
```
    Start-Process msedge -ArgumentList "https://www.bing.com"
    Start-Sleep -Seconds $Browser_Load_time
```
#### 2. Each search query is generated by combining the prefix "MICROSOFT_REWARD_CHEATER_APP_OPERATION" and a randomly generated string(text).
```
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
    $randomQueries = 1..$Searches | ForEach-Object {
        "MICROSOFT_REWARD_CHEATER_APP_OPERATION?SEARCH=$(Get-RandomString -length $Random_length)"
    }
```
#### 3. Each search is performed by a loop.
```
    foreach ($query in $randomQueries) {
        $Count += 1;
        $FILE_DOC += "[$Count]:MICROSOFT REWARD CHEATER APP OPERATION::$query`n"
        [System.Windows.Forms.SendKeys]::SendWait("/")
        [System.Windows.Forms.SendKeys]::SendWait($query)
        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
        Start-Sleep -Seconds 3
    }
```
#### 4. After each search is performed, Microsoft Edge will be closed.
```
    Stop-Process -Name msedge
```
#### 5. The system will ask you about the output log file with the following question: `Output log?`
```
    $answer = Read-Host -Prompt "Output log? (Y/N)"
    if ($answer -eq "Y" -or $answer -eq "y") {
        if ($Path -eq "") {
            $Path = Read-Host "Please input file path"
        }
        $File_name = "Microsoft reward cheater output ("
        $File_name += Get-Date -Format "yyyy-MM-dd"
        $File_name += ").txt"
        New-Item -ItemType "File" -Name $File_name -Value $FILE_DOC -Path $Path -Force
        Write-Information -MessageData ("The output log has been successfully saved in the specified path, $Path, as $File_name.")
    } elseif ($answer -eq "N" -or $answer -eq "n") {
    } else {
        $answer = Read-Host -Prompt "Output log? (Y/N)"
    }
```
> [!NOTE]
> If you want an output log file, type `y` or `Y`; if you do not want a output file, type `n` or `N`.
#### 6. The content of the output log file will be outputted.
```
    Write-Output $FILE_DOC
```
