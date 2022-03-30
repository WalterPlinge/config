Add-Type -AssemblyName System.Drawing;

# Create temp path
$temp_path = ".\Files"
If (!(Test-Path $temp_path)) {
	New-Item -Name $temp_path -Type Directory
}
Push-Location $temp_path

# Fetch all the files
Write-Output "Fetching images ..."
Copy-Item "$env:LocalAppData\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*" ".\"
# Change the file extensions
$(Get-ChildItem).FullName | ForEach-Object {
	Write-Output "$_";
	Rename-Item "$_" "$_.jpg"
}

# Choose spotlight images
Write-Output "Extracting spotlight images .."
$(Get-ChildItem).FullName | ForEach-Object {
	# Spotlight images seem to not be square so we need differing dimensions
	$image = [Drawing.Image]::FromFile("$_")
	if ($image.Width -gt $image.Height) {
		Write-Output "Landscape: $_"
		Copy-Item "$_" "..\Landscape\"
	} elseif ($image.Width -lt $image.Height) {
		Write-Output "Portrait: $_"
		Copy-Item "$_" "..\Portrait\"
	}
	# Clean up image so we can delete the temporary files later on
	$image.Dispose()
}

# Clean up folder
Write-Output "Cleaning files ..."
Pop-Location
Remove-Item -Recurse $temp_path

Write-Output "Done!"
Read-Host -Prompt "Press enter to continue..."
Exit
