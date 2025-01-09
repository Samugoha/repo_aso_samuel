# Solicitar los dos números al usuario
$numero1 = Read-Host "dime el primer número"
$numero2 = Read-Host "dime el segundo número"
$numero1 = [int]$numero1
$numero2 = [int]$numero2
if ($numero1 -gt $numero2) {
    Write-Host "El primer número es mayor que el segundo."
} elseif ($numero1 -lt $numero2) {
    Write-Host "El primer número es menor que el segundo."
} else {
    Write-Host "Los dos números son iguales."
}
