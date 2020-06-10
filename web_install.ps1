param (
    [string]$url,
    [string]$filename,
    [string]$storageDir = "C:\Users\Yotam\Downloads\AutoInstall"
)
Write-Output "$url"

$webclient = New-Object System.Net.WebClient
$filepath = "$storageDir\$filename"
Write-Output $filepath
$webclient.DownloadFile($url,$filepath)