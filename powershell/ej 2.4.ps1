Write-Host "CALCULADORA"
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"
$opcion = Read-Host "Elige una opción (1/2/3/4)"
$numero1 = Read-Host "Introduce el primer número"
$numero2 = Read-Host "Introduce el segundo número"

$numero1 = [int]$numero1
$numero2 = [int]$numero2

switch ($opcion) {
    1 {
        $resultado = $numero1 + $numero2
        Write-Host "La suma de $numero1 y $numero2 es: $resultado"
    }
    2 {
        $resultado = $numero1 - $numero2
        Write-Host "La resta de $numero1 y $numero2 es: $resultado"
    }
    3 {
        $resultado = $numero1 * $numero2
        Write-Host "La multiplicación de $numero1 y $numero2 es: $resultado"
    }
    4 {
        if ($numero2 -eq 0) {
            Write-Host "no se puede"
        } else {
            $resultado = $numero1 / $numero2
            Write-Host "La división de $numero1 y $numero2 es: $resultado"
        }
    }
    default {
        Write-Host "no válido.Elige un número entre 1 y 4."
    }
}
