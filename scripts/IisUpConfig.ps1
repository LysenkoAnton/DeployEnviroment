Get-WindowsFeature Web-* | Add-WindowsFeature
New-Item -Path C:\inetpub\wwwroot\GameStore -ItemType Directory
New-WebSite -Name GameStore -Port 80 -HostHeader localhost -PhysicalPath "C:\inetpub\wwwroot"
New-WebApplication -Name GameStore -Site "GameStore" -PhysicalPath "C:\inetpub\wwwroot\GameStore" -ApplicationPool ".NET v4.5 Classic"