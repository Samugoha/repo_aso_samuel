$numeroAdivinar = 42
Write-Host "Adivina el número entre 0 y 100."
do {
    $intento = Read-Host "Dime un número"
    if ($intento -gt $numeroAdivinar) {
        Write-Host "El número es menor. Intenta de nuevo."
    } elseif ($intento -lt $numeroAdivinar) {
        Write-Host "El número es mayor. Intenta de nuevo."
    } else {
        Write-Host "¡Felicidades! Has adivinado el número."
    }
} while ($intento -ne $numeroAdivinar)  