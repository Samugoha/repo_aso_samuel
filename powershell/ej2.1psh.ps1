$num = Read-Host "Introduce un número"

if ($num % 2 -eq 0) {
    Write-Host "El número $num es par."
} else {
    Write-Host "El número $num es impar."
}
;