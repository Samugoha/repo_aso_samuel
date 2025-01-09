$ruta = Read-Host "Introduce la ruta del archivo o carpeta"

if (Test-Path $ruta) {
    Write-Host "El archivo o carpeta '$ruta' existe."
} else {
    Write-Host "El archivo o carpeta '$ruta' NO existe."
}
