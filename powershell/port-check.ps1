<#

.DESCRIPTION
  This script is to test a remote connection with a specified port.

.NOTES
  Version:        1.0
  Author:         <Dennis Perrone
  Creation Date:  20190616
  Modified Date:  20190616
  Purpose/Change: Initial script development


#>

echo "This script will allow you to test firewall connections."
$dest = Read-Host "Input the destination address or hostname"
$port = Read-Host "Input the desired port"

Test-NetConnection -ComputerName "$dest" -InformationLevel Detailed -Port "$port"