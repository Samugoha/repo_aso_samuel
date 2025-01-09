Write-Host "Introduce tu renta anual: "
$renta = [double](Read-Host)
if ($renta -lt 10000) {
    $tipo_impositivo = 5
} elseif ($renta -lt 20000) {
    $tipo_impositivo = 15
} elseif ($renta -lt 35000) {
    $tipo_impositivo = 20
} elseif ($renta -lt 60000) {
    $tipo_impositivo = 30
} else {
    $tipo_impositivo = 45
}

Write-Host "tu tipo impositivo es $tipo_impositivo%."