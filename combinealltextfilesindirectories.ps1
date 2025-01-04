# To run this code make sure the combinefile.ps1 file is in the same directory as the sourcefolder
# type .\combinefile.ps1 and you should see your output file created and combined and ready for viewing
# Define the folder to search and the output file
$sourceFolder = "C:\users\btkel\pittston"
$outputFile = "C:\users\btkel\pittston\output.txt"

# Ensure the output file is empty before appending content
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Find all .txt files in the specified folder and subfolders
$txtFiles = Get-ChildItem -Path $sourceFolder -Recurse -Filter "*.txt"

# Loop through each file, read its contents, and append them to the output file
foreach ($file in $txtFiles) {
    $content = Get-Content -Path $file.FullName
    Add-Content -Path $outputFile -Value $content
}

Write-Host "Contents of all .txt files have been combined into $outputFile"
