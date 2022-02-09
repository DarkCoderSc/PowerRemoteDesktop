Write-Output "This script is used during development phase. Never run this script under a production environment."

Invoke-Expression -Command (Get-Content "PowerRemoteDesktop_Viewer\PowerRemoteDesktop_Viewer.psm1" -Raw)

Invoke-RemoteDesktopViewer -SecurePassword (ConvertTo-SecureString -String "Jade@123@Pwd" -AsPlainText -Force) -ServerAddress "192.168.1.25" -BlockSize "Size128" -ImageCompressionQuality 100 -PacketSize "Size16384" -Resize -ResizeRatio 50
#Invoke-RemoteDesktopViewer -SecurePassword (ConvertTo-SecureString -String "Jade@123@Pwd" -AsPlainText -Force) -ServerAddress "172.31.115.183"