$source = 'C:\Portable\ImgResize\images'
#$dest = 'C:\Portable\ImgResize\images\thumb'
$thumFolder = 'thumb'
$procFolder = 'Processati'
$dest = $source+"\"+$ThumFolder
$processed = $source+"\"+$procFolder
$quality = 100

$source_list = get-childitem -path $source -recurse | where {$_.fullname -notlike "*$ThumFolder*" } | where {$_.fullname -notlike "*$procFolder*" }
$dest_list = get-childitem -Path $dest -recurse
#echo $source_list
	
$source_test = Test-Path -Path $source\*
$dest_test = Test-Path -Path $dest\*
#Test-Path -Path $source\*
#Test-Path -Path $dest\*

IF ($source_test -eq $false){
Write-Host "Nessun file presente nella cartella "$source\
exit
}


foreach ($file in $source_list) {

     echo $file.FullName
     ./Resizer.ps1 $file.FullName $dest\$file $quality
     Move-Item -Path $file.FullName -Destination $processed\$file
}