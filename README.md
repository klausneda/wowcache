# wowcache
World of Warcraft Cache Files

## Description
This repository contains World of Warcraft Cache directory content generated on a Windows machine. This is useful for Linux users in order to *fix* their client.

## Content
* \_\_retail__ and \_\_classic__ directories store the actual Cache content.
* Upload.ps1 is a PowerShell script that can be used on a Windows machine to upload the updated Cache.
* Download.sh is a Bash script that can be used to pull the latest  changes.

## Prerequisites
git and openssh. Nothing else I could think of right now.

## Usage Linux Users
Run the Download.sh script before launching World of Warcraft.
Preferably configure your runner to run the script before launching the game.

## Usage - Windows Users
Request commit access to this repository or fork it for your own use. Ideally people should be able to rely on a single repository that is reliably updated.

1. Open Task Scheduler.
2. Click Create Task in the Actions panel.
3. Add a sensible name to your task.
4. In the Triggers tab add a new Trigger on a Dialy/Weekly/Monthly schedule and set an hour when you expect to have your machine running.
5. In the **Actions** tab add a new Action to Start a program.
   In the **Program/script** field add:
   
   <pre><code>powershell</code></pre>
   
   In the **Add arguments (optional)** field add:
   <pre><code>-Command &{full_path_to_upload_script -path 'full_path_to_wow_install_dir'}</code></pre>
   
Now you will upload the Cache content every time you are logged into your machine within the selected time period.

## Contributions
As I do not have a World of Warcraft Classic installation I cannot upload the Cache for it.

I have no experience with PowerShell so the upload script was done by googling every single step and hoping that the syntax is as close as possible to Bash so I'm sure this can be improved by somoneone with better knowledge.

## Feedback
Feedback is welcome, mainly during this period since this is in its initial stages and is not properly tested yet.
