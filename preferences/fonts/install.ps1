$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
dir ./*.ttf | %{ $fonts.CopyHere($_.fullname) }