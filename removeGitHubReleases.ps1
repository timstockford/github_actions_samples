
#Set $GITHUB_TOKEN with Personal Access Token in powershell session before running

$releaseid = ""

#Get current releases
$curlreleases = curl.exe --header "Authorization: token $GITHUB_TOKEN" `
                       --header 'Accept: application/vnd.github.v3' `
                       --location https://api.github.com/repos/timstockford/github_actions_templates/releases

$releases = $curlreleases |ConvertFrom-Json
$releases |sort id -descending |ft id,name,created_at,draft

$draftreleases = $releases |Where-Object {$_.draft -eq "True"}
$draftreleases |sort id -descending |ft id,name,created_at,draft
echo $draftreleases.Count

# Delete all draft releases
$draftreleases | ForEach-Object {
   $releaseid = $_.id
   echo $releaseid
   curl.exe --header "Authorization: token $GITHUB_TOKEN" `
   --header 'Accept: application/vnd.github.v3' `
   --location https://api.github.com/repos/timstockford/github_actions_templates/releases/$releaseid `
   --request DELETE

   start-sleep 2
}
