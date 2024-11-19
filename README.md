# Thumbnail-create / Resize image

### Config

Edit ratio in file "Resizer.ps1"

```
#hardcoded canvas size...
$canvasWidth = 212.0
$canvasHeight = 150.0
```

### Run

Edit source, destination and quality in file Launcher.ps1  
PS. Destination must must not be empty.  
Already imported images will be skipped.  


```
$source = 'C:\Portable\ImgResize\images'
$dest = 'C:\Portable\ImgResize\thumb'
$quality = 100
```

Run Launcher.ps1 or Converti IMG in THUMB.cmd


# Thumbnail-create / Resize image (V2)
Add processed path, file moved post-resized  
```
$source = 'C:\Portable\ImgResize\images'
#$dest = 'C:\Portable\ImgResize\images\thumb'
$thumFolder = 'thumb'
$procFolder = 'Processati'
$dest = $source+"\"+$ThumFolder
$processed = $source+"\"+$procFolder
#$processed = 'C:\Portable\ImgResize\images\Processati'
```


# Compare - Move
Only for check difference and clean filesystem.  
