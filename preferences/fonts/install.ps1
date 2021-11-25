$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
$systemFontPath="C:/Temp"

New-Item $systemFontPath -Force -ItemType Directory | Out-Null

dir ./*.ttf | %{ 
    $fontName=$_.Name
    $fontPath="$systemFontPath\$fontName"

    if(-not (Test-Path ($fontPath))) {
        cp $_.fullname "$systemFontPath"
        $fonts.CopyHere($_.fullname) 
    }
}