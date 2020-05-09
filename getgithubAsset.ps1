
# SET $TOKEN for PAT in Powershell session BEFORE RUNNING
$OWNER="timstockford"
$REPO="github_actions_templates"
$ASSETID=""
$ASSETNAME=""
$RELEASEID="26338451"
$RELEASEURL="https://api.github.com/repos/$OWNER/$REPO/releases/$RELEASEID"
$ASSETURL=""

#To query github, use header 'Accept: application/vnd.github.v3'

#Get Asset ID from Release
$CurlOutput = curl.exe --header "Authorization: token $TOKEN" `
                       --header 'Accept: application/vnd.github.v3' `
                       --location $RELEASEURL


$objReleases = $curloutput |ConvertFrom-Json

$CurlOutput |Out-File -FilePath .\releases.json -Force

$ASSETID = $objReleases.assets[0].id
$ASSETNAME = $objReleases.assets[0].name
$ASSETURL = $objReleases.assets[0].url
echo "$ASSETID : $ASSETNAME"
echo "$ASSETURL"

#Download Asset from Release
curl.exe --header "Authorization: token $TOKEN" `
     --header 'Accept: application/octet-stream' `
     --output $ASSETNAME `
     --location $ASSETURL

Get-ChildItem $ASSETNAME

# Test zip file extraction
$guid = New-Guid 
$tmpfolder = "getgithubfile_$guid"

Expand-Archive -Path .\myFiles.zip -DestinationPath $tmpfolder

Get-ChildItem $tmpfolder -Recurse

Remove-Item $tmpfolder -Recurse -Force
