Write-Host "dime un número para mostrar su tabla de multiplicar:"
$num = [int](Read-Host)
for ($i = 1; $i -le 10; $i++) {
    Write-Host "$num x $i = $($num * $i)"
}
