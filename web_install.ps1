param (
    [string]$url,
    [string]$filename,
    [string]$storageDir = "$Env:Userprofile\Downloads\AutoInstall",
    [switch]$VerbosePreference = $false
)
$filepath = "$storageDir\$filename"
if($VerbosePreference) {
    Write-Output "URL: $url     Filepath: $filepath"
} 
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($url,$filepath)
