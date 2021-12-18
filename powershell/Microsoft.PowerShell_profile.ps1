Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSReadline

Set-Alias -Name l -Value Get-ChildItemColor
Set-Alias -Name ls -Value lsd
Set-Alias -Name vi -Value neovide
Set-Alias -Name vim -Value neovide

Set-PoshPrompt -Theme jblab_2021
