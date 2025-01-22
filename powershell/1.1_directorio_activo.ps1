$departamentos = "C:\Users\Administrador\Downloads\departamentos.csv"
$empleados = "C:\Users\Administrador\Downloads\empleados.csv"
$defaultPassword = "aso2025."
$departamentosData = Import-Csv -Path $departamentos
$empleadosData = Import-Csv -Path $empleados
$empleadosData | ForEach-Object {
    $login = "$($_.Nombre.ToLower()).$($_.Apellido.ToLower())"
    if ($departamentosData.Departamento -contains $_.Departamento) {
        New-LocalUser -Name $login -Password (ConvertTo-SecureString $defaultPassword -AsPlainText -Force) `
                      -PasswordNeverExpires:$false -UserMayNotChangePassword:$false `
                      -FullName "$($_.Nombre) $($_.Apellido)"
        Write-Host "Usuario '$login' creado."
    } else {
        Write-Host "El departamento '$($_.Departamento)' no existe. Usuario no creado."
    }
}
