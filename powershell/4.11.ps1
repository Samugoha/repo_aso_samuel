$Archivo = "C:\Users\Administrador\Downloads\usuarios.csv"
Import-Csv -Path $Archivo | ForEach-Object {
    Write-Output "Nombre: $($_.nombre), Apellidos: $($_.apellidos), Grupo: $($_.grupo)"
}
