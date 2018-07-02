﻿New-PSDrive -Name "X" -PSProvider FileSystem -Root "\\hlfnp02\common"
Get-ChildItem –Path  X: –Recurse | Where-Object LastWriteTime –lt (Get-Date).AddDays(-8) | Remove-Item -Confirm:$false -WhatIf 
