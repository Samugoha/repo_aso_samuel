Write-Host "Ingrese un número entero positivo:"
$num = Read-Host
if ([int]$num -ge 0) {
 $cuentaAtras = ($num..0 -join ", ")
    Write-Host "Cuenta atrás: $cuentaAtras"
} else {
    Write-Host "Por favor, ingrese un número entero positivo."
}
