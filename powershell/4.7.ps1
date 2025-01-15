Write-Host "dime un número entero:"
$numero = Read-Host
for ($i = 1; $i -le $numero; $i++) {
    Write-Host ('*' * $i)
}
