#oh-my-posh init pwsh --config ~\OneDrive\omp_themes\craver_mod.omp.json | Invoke-Expression
#oh-my-posh init pwsh --config $env:POSH_THEMES_PATH\clean-detailed.omp.json | Invoke-Expression
oh-my-posh init pwsh --config $HOME\OneDrive\omp_themes\clean-modified.omp.json | Invoke-Expression

Import-Module -Name Terminal-Icons
Import-Module PSReadline

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Unix aliases
Set-Alias -Name ls -Value Get-ChildItem
Set-Alias -Name cat -Value Get-Content
Set-Alias -Name rm -Value Remove-Item
Set-Alias -Name mv -Value Move-Item

# Directory navigation aliases
function getDocs {Set-Location -Path C:\Users\aricb\OneDrive\Documents}
Set-Alias -Name docs -Value getDocs 

function getDownloads {Set-Location -Path C:\Users\aricb\Downloads}
Set-Alias -Name dl -Value getDownloads 

function goToRepos {Set-Location -Path D:\Repos}
Set-Alias -Name repos -Value goToRepos 

function goToLocal {Set-Location -Path ${env:LOCALAPPDATA}}
Set-Alias -Name local -Value goToLocal
