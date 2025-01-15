do {
    Clear-Host
    Write-Host "****** CALCULADORA ********"
    Write-Host "1) Sumar"
    Write-Host "2) Restar"
    Write-Host "3) Multiplicar"
    Write-Host "4) Dividir"
    Write-Host "5) Salir"
    $opcion = Read-Host "¿Qué desea hacer? Elige una opción (1-5)"

    if ($opcion -in 1, 2, 3, 4) {
        $num1 = [double](Read-Host "Introduce el primer número")
        $num2 = [double](Read-Host "Introduce el segundo número")
        switch ($opcion) {
            1 { $resultado = Sumar -a $num1 -b $num2 }
            2 { $resultado = Restar -a $num1 -b $num2 }
            3 { $resultado = Multiplicar -a $num1 -b $num2 }
            4 { $resultado = Dividir -a $num1 -b $num2 }
        }
        Write-Host "Resultado: $resultado"
    } elseif ($opcion -eq 5) {
        Write-Host "Saliendo"
    } else {
        Write-Host "Opción no válida, intentalo nuevamente."
    }
    Pause
} while ($opcion -ne 5)
function Sumar {
    param ($a, $b)
    return $a + $b
}
function Restar {
    param ($a, $b)
    return $a - $b
}
function Multiplicar {
    param ($a, $b)
    return $a * $b
}
function Dividir {
    param ($a, $b)
    if ($b -ne 0) {
        return $a / $b
    } else {
        return "No se puede dividir entre cero."
    }
}