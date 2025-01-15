$contraseña = "hola01"
do {
    $usuario_input = Read-Host "Introduce la contraseña"
} while ($usuario_input -ne $contraseña)

Write-Host "Contraseña correcta."
