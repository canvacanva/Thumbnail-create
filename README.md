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
Already imported images will skipped.


```
$source = 'C:\Portable\ImgResize\images'
$dest = 'C:\Portable\ImgResize\thumb'
$quality = 100
```

Run Launcher.ps1 or Converti IMG in THUMB.cmd

