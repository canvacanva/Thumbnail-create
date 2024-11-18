$source = 'C:\Portable\ImgResize\images'
$dest = 'C:\Portable\ImgResize\thumb'
$quality = 100

$source_list = get-childitem -path $source -recurse
$dest_list = get-childitem -Path $dest -recurse


	
$source_test = Test-Path -Path $source\*
$dest_test = Test-Path -Path $dest\*
#Test-Path -Path $source\*
#Test-Path -Path $dest\*

IF ($source_test -eq $false){
Write-Host "Nessun file presente nella cartella "$source\
exit
}

IF ($dest_test -eq $false){
Write-Host "Nessun file presente nella cartella "$dest\ " --> creare almeno un file txt di prova"
exit
}

$cObj = compare-object -DifferenceObject $source_list -ReferenceObject $dest_list -IncludeEqual
foreach ($obj in $cObj) {
echo $obj
echo $cObj
if ($obj.sideindicator -ne "=="){
echo "$($obj.InputObject.FullName)"
echo "$($obj.InputObject)"
      ./Resizer.ps1 $source\$($obj.InputObject) $dest\$($obj.InputObject) $quality
}
}