[int] $numero = Read-Host "dime un número"
[int] $numero2 = Read-Host "dime otro número"
$suma = $numero + $numero2
$resta = $numero - $numero2
$multiplicación = $numero * $numero2
$division = $numero / $numero2
$resto = $numero % $numero2

Write-Host "la suma es = $numero + $numero2 = $suma "
Write-Host " la resta es $numero - $numero2 = $resta"
Write-Host " la multiplicación es $numero * $numero2 = $multiplicación"
Write-Host " la división es $numero / $numero2 = $division"
Write-Host " el resto es $numero % $numero2 = $resto"