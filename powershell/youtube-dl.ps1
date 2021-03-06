<#

.DESCRIPTION
  This script is to test a remote connection with a specified port.

.NOTES
  Version:        1.0
  Author:         <Dennis Perrone
  Creation Date:  20190616
  Modified Date:  20190616
  Purpose/Change: Initial script development

.REFERENCES
  https://www.business.com/articles/powershell-interactive-menu/
#>

$format = Read-Host "What format do you want this download?"

function Show-Menu
{
     param (
           [string]$Title = 'Youtube-DL Script'
     )
     cls
     Write-Host "================ $Title ================"
     
     Write-Host "1: Press '1' for Video (Single)."
     Write-Host "2: Press '2' for Audio (Single)."
     Write-Host "3: Press '3' for Video (Playlist)."
     Write-Host "4: Press '4' for Audio (Playlist)."
     Write-Host "Q: Press 'Q' to quit."
}

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                cls
                'You chose option #1'
           } '2' {
                cls
                'You chose option #2'
           } '3' {
                cls
                'You chose option #3'
           } '4' {
                cls
                'You chose option #4'
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')