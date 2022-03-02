Function prompt {
	Write-Host "$(Convert-Path $(Get-Location))" -NoNewline -ForegroundColor Cyan

	if ((Get-History).count -ge 1) {
		$lastCommand = (Get-History)[-1]
		$executionTime = ($lastCommand.EndExecutionTime - $lastCommand.StartExecutionTime)
		$time = [math]::Round($executionTime.TotalMilliseconds, 3)
		Write-Host " $time ms" -NoNewline -ForegroundColor Yellow
	}

	Write-Host ""
	Write-Host ">" -NoNewline -ForegroundColor Green
	return " "
}

Function which { Get-Command $args | Format-Table Path }

Function gits { git status }
Function gitf { git fetch  }
Function gitm { git merge  }
Function gitd { git diff $args }
Function gitl { git log --decorate --graph --oneline $args }
Function gitdhead { gitd HEAD..origin/HEAD }
Function gitlhead { gitl HEAD..origin/HEAD }

Function vssetup {
	$file = 'C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\Microsoft.VisualStudio.DevShell.dll'
	$code = '07e7e5c4'
	if (Test-Path -Path $file) {
		Import-Module $file
		Enter-VsDevShell $code -Arch amd64 -HostArch amd64
	}
}
vssetup

# Invoke-Expression (&starship init powershell)

# clear
