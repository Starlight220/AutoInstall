function webinstall ([string]$url,
    [string]$filename,
    [string]$storageDir = "$Env:Userprofile\Downloads\AutoInstall",
    [switch]$v) {
  $filepath = "$storageDir\$filename"
  if($v) {
    Write-Output "URL: $url     Filepath: $filepath"
  } 
  $webclient = New-Object System.Net.WebClient
  $webclient.DownloadFile($url,$filepath)
}

Export-ModuleMember -Function webinstall