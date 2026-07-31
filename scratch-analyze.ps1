Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem "public\assets-lamp\lamp\*.png"

foreach ($f in $files) {
    $bmp = New-Object System.Drawing.Bitmap($f.FullName)
    $w = $bmp.Width
    $h = $bmp.Height
    
    $minX = $w
    $minY = $h
    $maxX = 0
    $maxY = 0
    $opaquePixels = 0
    
    # Sample every 4th pixel for speed
    for ($y = 0; $y -lt $h; $y += 2) {
        for ($x = 0; $x -lt $w; $x += 2) {
            $pixel = $bmp.GetPixel($x, $y)
            if ($pixel.A -gt 10) {
                $opaquePixels++
                if ($x -lt $minX) { $minX = $x }
                if ($y -lt $minY) { $minY = $y }
                if ($x -gt $maxX) { $maxX = $x }
                if ($y -gt $maxY) { $maxY = $y }
            }
        }
    }
    
    $contentW = $maxX - $minX
    $contentH = $maxY - $minY
    $centerX = [math]::Round($minX + $contentW / 2)
    $centerY = [math]::Round($minY + $contentH / 2)
    $imgCenterX = [math]::Round($w / 2)
    $imgCenterY = [math]::Round($h / 2)
    $offsetX = $centerX - $imgCenterX
    $offsetY = $centerY - $imgCenterY
    $coverage = [math]::Round(($opaquePixels * 4) / ($w * $h) * 100, 1)
    
    Write-Output "===== $($f.Name) ====="
    Write-Output "  Canvas: ${w}x${h}"
    Write-Output "  Content BBox: (${minX},${minY}) to (${maxX},${maxY})"
    Write-Output "  Content Size: ${contentW}x${contentH}"
    Write-Output "  Optical Center: (${centerX},${centerY})"
    Write-Output "  Image Center: (${imgCenterX},${imgCenterY})"
    Write-Output "  Offset from center: dx=${offsetX}, dy=${offsetY}"
    Write-Output "  Approx Coverage: ${coverage}%"
    Write-Output ""
    
    $bmp.Dispose()
}
