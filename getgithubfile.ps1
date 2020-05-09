
$TOKEN="937f5ef7da0caccb9c65bb0d8d9975ffc3ec0ccd"
$OWNER="timstockford"
$REPO="github_actions_templates"
$ASSETID="20289832"
$FILE="https://api.github.com/repos/$OWNER/$REPO/releases/assets/$ASSETID"
echo $FILE
#To query github, use header 'Accept: application/vnd.github.v3'


$GHQueryURL = "https://api.github.com/repos/$OWNER/$REPO/releases"
$CurlOutput = curl.exe --header "Authorization: token $TOKEN" `
                       --header 'Accept: application/vnd.github.v3' `
                       --location $GHQueryURL


$objReleases = $curloutput |ConvertFrom-Json



<#
curl.exe --header "Authorization: token $TOKEN" `
     --header 'Accept: application/octet-stream' `
     --output myFiles.zip `
     --location $FILE


$guid = New-Guid 
$tmpfolder = "getgithubfile_$guid"
Expand-Archive -Path .\myFiles.zip -DestinationPath $tmpfolder

Get-ChildItem $tmpfolder

#>

Start-Sleep 3