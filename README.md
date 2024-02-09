# Microsoft reward cheater
This powerShell script (Microsoft-reward-cheater.ps1) automates Bing searches with random queries to potentially earn Microsoft Rewards points. It features:

* Random query generation for search variety.
* Keystroke simulation to perform searches automatically.
* Optional logging of search activity.
* User input for number of searches, browser loading time, and optional log file path.

> [!WARNING]
> **DO NOT USE OTHER APPLICATION WHILE THIS SCRIPT IS RUNNING.** <br>
> This script uses keyboard typing to avoid getting noticed by the browser, using other application while this script will warning will cause the text typed in the wrong place, and finally cause a big mess.

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
> You do not have to write an input to this parameter even if you need a log file. There will be a input area after your request of a output log.
### Browser_Load_time
* Mandatory: True
* Input type: [int] Number
* Description: Time in seconds to wait for the browser to load (The time gap between the searches to run and the launch of Microsoft Edge).
> [!TIP]
> The time depends on the speed of your CPU and your WIFI-connection's stability.

### Random_length 
* Mandatory: False (Optional)
* Description: Length of random search queries (range: 1-100). If not provided, a random value between 1-100 will be used.
> [!TIP]
> We suggest that the random length to be between 30 to 60. 
## How to run it in Powershell
Step 1: 
  Open PowerShell with administrator privileges.<br>
  1.  Right-click the Windows icon on the taskbar.<br>
  2.  Click "Windows Terminal (Admin)."

Step 2:
Paste this code in the command line.<br>
It will bypass the execution policy from windows powershell.

```
set-executionpolicy -executionpolicy bybass
```
Step 3:
Then, run this command.

```
powershell -command "& { . <path>\Microsoft-Reward-cheater.ps1; Run}"
```
#*You'll need to replace ```<path>``` with the actual path to your file. Feel free to add parameters. To add parameters, you will need to type it after the cmdlet "Run".* <br>
Step 4:
Set the execution policy back to restricted, so your computer will not be hacked.
```
set-executionpolicy -executionpolicy restricted
```

## Usage example
This is one of the example of using this script.
1. Run 30 searches after 3 seconds load time for edge browser.
```
powershell -command "& { . <path>\Microsoft-Reward-cheater.ps1; Run -Searches 30 -Browser_Load_time 3}"
```
<!--```--->
