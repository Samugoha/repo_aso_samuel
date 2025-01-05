Write-Host "dime tu puntuación: "
$puntuacion = [double](Read-Host)

if ($puntuacion -eq 0.0)
 {
    $nivel = "Inaceptable"
    $beneficio = 2400 * $puntuacion
} 
elseif ($puntuacion -eq 0.4) 
{
    $nivel = "Aceptable"
    $beneficio = 2400 * $puntuacion
}
 elseif ($puntuacion -ge 0.6
 ) {
    $nivel = "Meritorio"
    $beneficio = 2400 * $puntuacion
}
 else {
    $nivel = "Puntuación no válida"
    $beneficio = 0
}

if ($nivel -ne "Puntuación no válida") {
    Write-Host "Tu nivel de rendimiento es: $nivel."
    Write-Host "La cantidad de dinero que recibirás es: $beneficio €."
} else {
    Write-Host "la puntuación es no válida."
}