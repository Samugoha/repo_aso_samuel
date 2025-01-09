$contraseñaGuardada = "contraseña"
$contraseñaIntroducida = Read-Host "Introduce la contraseña"
if ($contraseñaGuardada.ToLower() -eq $contraseñaIntroducida.ToLower()) {
    Write-Host "¡Contraseña correcta!"
} else {
    Write-Host "Contraseña incorrecta."
}
