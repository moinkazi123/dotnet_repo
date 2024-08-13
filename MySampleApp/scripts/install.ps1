# scripts/install.ps1
Write-Output "Deployment started."

# Stop IIS Application Pool if it's running
Stop-WebAppPool -Name 'MySampleAppAppPool'

# Copy files to the destination directory
Copy-Item -Path 'C:\inetpub\wwwroot\MySampleApp\*' -Destination 'C:\inetpub\wwwroot\MySampleApp' -Recurse -Force

# Start IIS Application Pool
Start-WebAppPool -Name 'MySampleAppAppPool'

Write-Output "Deployment completed."
