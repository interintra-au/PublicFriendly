# Step 1: Create the folder if it doesn't exist
$folderPath = "PATH\TO\FOLDER\HERE"
if (-not (Test-Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory -Force
}

# Step 2: Download the script from public link
$URL = "LINK TO FILE HERE"
$DownloadFilePath = Join-Path -Path $folderPath -ChildPath "NAME-FILE-WHEN-DOWNLOADED-HERE.FILEEXTENSION"

# Step 3: Allow the script to overwrite the file if it exists
Invoke-WebRequest -Uri $URL -OutFile $DownloadFilePath -ErrorAction SilentlyContinue
