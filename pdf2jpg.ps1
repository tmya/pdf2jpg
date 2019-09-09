# SPDX-License-Identifier: MIT
# Copyright (C) 2019 Akio Tomita

#=============================================================
# v 0.0α 2019/09/09
#=============================================================

#=============================================================
# Settings (please change this config.)
#=============================================================
#ImageMagick
[string]$imagickConvertExe = "C:\ImageMagick\convert.exe"


foreach($arg in $args)
{
    #$desktopPath = [Environment]::GetFolderPath('Desktop')
    $destinationFile = [System.IO.Path]::ChangeExtension($arg, ".jpg")
    Start-Process $imagickConvertExe -ArgumentList "-geometry 3840x2160 -strip -density 300 -quality 95 $arg -background white -flatten -alpha off "  , $destinationFile

}