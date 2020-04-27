write-host "This script will create the Zip file during build action"

# Set variables
$source = "./files"
$destination = "./files.zip"

# If zip file exists, delete file
If(Test-path $destination) {Remove-item $destination}

# Create zip file
Compress-Archive -Path $source -DestinationPath $destination

