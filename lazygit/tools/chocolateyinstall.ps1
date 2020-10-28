$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    url           = 'https://github.com/jesseduffield/lazygit/releases/download/v0.23.6/lazygit_0.23.6_Windows_32-bit.zip'
    url64bit      = 'https://github.com/jesseduffield/lazygit/releases/download/v0.23.6/lazygit_0.23.6_Windows_x86_64.zip'
    checksum      = '28e26ea59b134ffe736235ada6650511f1989d8588817a110f4436fbd0b7e471'
    checksum64    = 'd8adada20ec733a8d629d120e1b5933b294291283b7598f4bd257eea4278cd4e'
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
