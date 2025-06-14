> [!IMPORTANT]
> This repo will be archived soon because my friend lost his source code and he said this will no longer be maintained.
>
> Thank you for the support the community has given throughout the entire time.
>
> He said this project has failed as soon as he decided to publish this without publicly attaching the source code.
> 
> So, given the circumstances, this repository will no longer receive updates or maintenance.
>
> Thank you again for all the support from the community throughout its lifetime.
> 

# Microsoft Rewards Automator

Are you looking for a simple and efficient way to automate your Bing searches and maximize your Microsoft Rewards points? Look no further! The **Microsoft Rewards Automator** is designed to streamline the process and make earning rewards a breeze.

> [!WARNING]
> **DO NOT USE OTHER APPLICATIONS WHILE THIS SCRIPT IS RUNNING.**  
> This script uses keyboard input to avoid browser detection. Running other applications simultaneously may cause the text to be typed in the wrong place, resulting in a mess.

> [!CAUTION]
> **Choosing Dwell Time**
> 
> I recommend using "Slow Random" because it is highly unlikely to trigger Microsoft Rewards detection. Based on client feedback, selecting any option other than Slow Random prevents the addition of Microsoft Rewards points.
## Proof

https://github.com/user-attachments/assets/2a4442db-369e-462a-a893-b8b437d79796



## Features

- **Keystroke simulation**: Streamlines repetitive tasks by mimicking human input, allowing users to efficiently earn points without manual interaction.
- **Automated Searches**: Effortlessly automates Bing searches in Microsoft Edge to collect Microsoft Rewards points.
- **Seamless Integration**: Works flawlessly with your Edge browser, making setup a breeze.
- **User-Friendly Interface**: Simple setup and installation process for hassle-free use.

### Aim
<img src="https://github.com/max9836/microsoft-rewards-automator/blob/main/Microsoft%20Rewards%20Automator%20%23Aim.png?raw=true" height="350">

* **Simplicity:** The product demonstrates a high level of simplicity, making it easy to use and understand.
* **Reliability and Security:** The product is reliable and secure, ensuring data protection and minimal downtime.
* **Productive and Efficiency:** The product is designed to enhance productivity and efficiency, streamlining workflows and saving time.
* **Diversity:** The product offers a diverse range of features and functionalities to cater to various user needs.
* **User Experience and Interface:** The product provides an intuitive and user-friendly interface, making it enjoyable to use.
* **Functionality and Features:** The product offers robust functionality and features, fulfilling its intended purpose effectively.

## Prerequisites

Before you get started with the Microsoft Rewards Automator, please ensure you have the following:

- **Operating System**: A **Windows PC** with the **.NET Framework** installed.
- **Web Browser**: The **Microsoft Edge** with **Bing browser**, which is pre-installed on Windows systems.
- **Microsoft Account**: A valid **Microsoft account** to earn and redeem Rewards points.

## Download and Installation
This app is built using the .NET framework, so you must install the .NET 8.0 runtime to run it. Below are 2 methods to download and install it.
### Method 1: Using Installer (for individuals who have already installed the .NET 8.0 framework)
Follow these steps to install the Microsoft Rewards Automator:

1. **Download the Installer**: Get the latest version of the installer from the [Releases](https://github.com/max9836/microsoft-rewards-automator/releases/latest) section.
2. **Run the Installer**: Execute the installer, which will automatically install the Microsoft Rewards Automator app on your system.
3. **Launch the App**: Once the installation is complete, you can start using the Microsoft Rewards Automator.
> [!NOTE]
> No need to download Default.Search.Query.Collections.zip
> 
> Default Search Query Collection is contained in the application folder, which in most case is `C:\Program Files (x86)\Microsoft Rewards Automator\`

> [!WARNING]
> Please DO NOT DELETE the .zip file if you are using method 1. You will need the installer to uninstall the application. If you wish to delete the installer.zip file, use method 2 instead. For more detail visit Method 1: Uninstall
### Method 1: Uninstall
Follow these steps to uninstall the Microsoft Rewards Automator
1. **Launch the installer**: Open `Setup.exe`
2. **Uninstall Microsoft Rewards Automator**: Select `Uninstall Microsoft Rewards Automator`
3. **Run the uninstallation**: Uninstall the app.
4. **Give feedback**: If there are issues in this app, please open the an issue in the issue page.

### Method 2: *(RECOMMENDED)* Download Directly (for individuals who have *NOT* installed the .NET 8.0 framework, which applies to most people)
Follow these steps to download and install Microsoft Rewards Automator with .NET 8.0 framework self-contained:

1. **Download *Direct.Download.Application.zip***: Get the latest version of Microsoft Rewards Automator App from the [Release](https://github.com/max9836/microsoft-rewards-automator/releases/latest) section
2. ***(OPTIONAL) (RECOMMENTED)* Download *Default.Search.Query.Collection.zip***: Download the Search Query Collection. There are various default search query collections available. Visit [this link](https://github.com/max9836/microsoft-rewards-automator?tab=readme-ov-file#defaultsearchquerycollectionzip) for more information.
3. **Unzip the zipped files**: Before using the files, unzip them first.
4. **Launch the App**: Once the installation is completed, you can start enjoying Microsoft Rewards Automator.

## Default.Search.Query.Collection.zip
There are four lists in `Default.Search.Query.Collection.zip
| No. | Wordlist | Description | Length |
|-----|----------|-------------|--------|
| 1   | all.txt  | <ul><li>Contains questions from EnhancedQuestions.txt and ArchievedQuestions.txt</li><li>Nouns.txt is excluded</li><li>Aimed for Diversity</li></ul>| 2174302 Lines |
| 2   | EnhancedQuestions.txt | <ul><li>Newly developed word list</li><li>Contains *Realistic* questions</li><li>Aimed for Realistic</li></ul> | 127201 Lines |
| 3   | ArchievedQuestion.txt | <ul><li>Contains Questions from an older version of Microsoft Rewards Automator, which does not have the funciton of selecting custom wordlist</li><li>The word list is generated by the following formular: `What is the definition of *? => What is the definition of apples?, What is the definition of beach?, etc.`</li><li>noun.txt is included</li></ul> | 2047101 Lines |
| 4   | Nouns.txt |<ul><li>Contains all nouns fromt the great noun list</li></ul> | 6801 Lines | 

## How to Use

Using the Microsoft Rewards Automator is simple! Just follow these steps:

1. **Open the App**: Launch the Microsoft Rewards Automator application on your PC.
2. **Input Your Preferences**: Fill in the following fields:
   | Parameter                           | Description                                         |
   |-------------------------------------|-----------------------------------------------------|
   | **Search Query**                   | Enter the search term you wish to use.              |
   | **Amount of Searches**             | Specify how many searches you want to perform.      |
   | **Open Microsoft Rewards Webpage** | Choose whether to open the Rewards webpage afterwards.|
   | **Dwell Time Selection**           | Select your preferred dwell time for searches      |

    - Dwell Time Selections
      
       | Selections        | Time Range                  |  Benefits                                       |
       |-------------------|-----------------------------|-------------------------------------------------|
       | Fast              | 1 second dwell time         | Time-saving                                     |
       | Slow              | 4 seconds dwell time        | For slow internet                               |
       | Fast Random       | 1-3 seconds random dwell time| Lower detection probability + Time-saving      |
       | Slow Random       | 3-5 seconds random dwell time| Lowest detection probability for slow internet |

   
3. **Start the Automation**: Click on the **Start** button to initiate the automation process.
4. **Sit Back and Relax**: Let the app handle everything while you earn points effortlessly!

## Troubleshooting

If you encounter issues with the app, please consider the following solutions:

- **Default Browser**: Ensure that the Bing browser is logged in.
- **Account Consistency**: Make sure you are logged in to the same Microsoft account in both the Bing browser and the Microsoft Rewards webpage.
- **.NET Framework**: Check that you have.NET 8.0 framework installed if you were using the *Download with Installer* method
- **Login Issues**: If you face any login problems, please reach out to me using the contact section below.

## License

This project is licensed under the [MIT license](https://github.com/max9836/microsoft-rewards-automator?tab=MIT-1-ov-file). For more details, please refer to the LICENSE file.
