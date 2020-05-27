# wowcache
World of Warcraft Cache Files

## Description
This repository contains World of Warcraft Cache directory content generated on a Windows machine. This is useful for Linux users in order to *fix* their client.

## Content
* \_\_retail__ and \_\_classic__ directories store the actual Cache content.
* Upload.ps1 is a PowerShell script that can be used on a Windows machine to upload the updated Cache.
* Download.sh is a Bash script that can be used to pull the latest  changes.

## Initial setup
1. Clone this repository.
2. Copy the content of the repository in your World of Warcraft installation root directory.

## Usage Linux Users
Run the Download.sh script before launching World of Warcraft.
Preferably configure your runner to run the script before launching the game.

## Usage - Windows Users
1. Open Task Scheduler.
2. Click Create Task in the Actions panel.
3. Add a sensible name to your task.
4. In the Triggers tab add a new Trigger on a Dialy/Weekly/Monthly schedule and set an hour when you expect to have your machine running.
5. In the Actions tab add a new Action to Start a program.  
