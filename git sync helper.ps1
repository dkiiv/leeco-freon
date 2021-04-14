$host.ui.RawUI.WindowTitle = "git sync helper"
$gitSync = Read-Host -Prompt "Do you want to pull or push?"
if ($gitSync -match 'pull'){
    git pull
}
if ($gitSync -match 'push'){
    $gitChanges = Read-Host -Prompt "What changes have you made?"
    git add .
    git commit -m $gitChanges
    git push
}
pause