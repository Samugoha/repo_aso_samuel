do {
    Write-Host "Menú:"
    Write-Host "a) Crear carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Ver si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"
    $opcion = Read-Host "Seleccione una opción"
    if ($opcion -eq "a") {
        New-Item -ItemType Directory -Path (Read-Host "Nombre de la carpeta")
    } elseif ($opcion -eq "b") {
        New-Item -ItemType File -Path (Read-Host "Nombre del fichero")
    } elseif ($opcion -eq "c") {
        Rename-Item -Path (Read-Host "Nombre actual") -NewName (Read-Host "Nuevo nombre")
    } elseif ($opcion -eq "d") {
        Remove-Item -Path (Read-Host "Nombre del fichero o carpeta") -Recurse -Force
    } elseif ($opcion -eq "e") {
        if (Test-Path (Read-Host "Nombre del fichero o carpeta")) {
            Write-Host "Existe."
        } else {
            Write-Host "No existe."
        }
    } elseif ($opcion -eq "f") {
        Get-ChildItem -Path (Read-Host "Nombre del directorio")
    } elseif ($opcion -eq "g") {
        Get-Date
    } elseif ($opcion -eq "x") {
        Write-Host "Saliendo"
    } else {
        Write-Host "no válido."
    }
    Pause
} while ($opcion -ne "x")
