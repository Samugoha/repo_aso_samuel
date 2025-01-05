$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo (mujer/hombre)"
$primerLetra = $nombre.Substring(0, 1).ToUpper()
if ($sexo.ToLower() -eq "mujer" -and $primerLetra -lt "M") {
    Write-Host "Te corresponde el grupo A."
} elseif ($sexo.ToLower() -eq "hombre" -and $primerLetra -gt "N") {
    Write-Host "Te corresponde el grupo A."
} else {
    Write-Host "Te corresponde el grupo B."
}
