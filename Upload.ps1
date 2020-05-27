param (
	[Parameter(Mandatory=$true)][string]$path
)

Write-Output "Retrieving files from $path"

# Navigate to the script directory
cd $PSScriptRoot

# Copy the Cache from the WoW directory
cp -Recurse -Force $path\_retail_\Cache .\_retail_
cp -Recurse -Force $path\_classic_\Cache .\_classic_

# Stash local changes
git stash

# Pull latest revision
git pull --rebase

# Apply latest stash
git checkout stash -- .

# Add all tracked files
git add .

# Get current date
$date = Get-Date -Format d

# Commit changes
git commit -m "Updated $date"

# Upload changes if any
git push
