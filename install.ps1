#iwr -useb get.scoop.sh | iex

$initialBashrc = "source '$PSScriptRoot\.bashrc'"
$Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllLines("$HOME/.bashrc", $initialBashrc, $Utf8NoBomEncoding)

scoop install git
scoop bucket add extras
scoop bucket list
echo "open git bash and run install-apps, then install-preferences"
pause