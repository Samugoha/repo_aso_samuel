$departamentos = "C:\Users\Administrador\Downloads\departamentos.csv"
$empleados = "C:\Users\Administrador\Downloads\empleados.csv"
$defaultPassword = "aso2025."
$departamentosdata = Import-Csv -Path $departamentos -Delimiter ";"
New-ADOrganizationalUnit -name "Empresa" -Path "DC=EMPRESA,DC=LOCAL"

foreach ($departamento in $departamentosdata) {
$nombredept = $departamento.departamento
$descripcion = $departamento.descripcion

$ouPath = "OU=Empresa,DC=EMPRESA,DC=LOCAL"
Write-Host $ouPath
New-ADOrganizationalUnit -name $nombredept -Description $descripcion -Path $ouPath -ErrorAction SilentlyContinue
}

$empleadosdata = Import-Csv -Path $empleados -Delimiter ";"

foreach ($empleado in $empleadosdata) {
$departamento = $empleado.Departamento
$nombre = $empleado.Nombre
$apellido = $empleado.Apellido

$login = ($nombre + "." + $apellido).ToLower()
$ouPath = "OU=$departamento,OU=Empresa,DC=EMPRESA,DC=LOCAL"

New-ADUser -SamAccountName $login `
    -UserPrincipalName "$login@EMPRESA.LOCAL" `
    -NAME "$nombre $apellido" `
    -GivenName $nombre `
    -surName $apellido `
    -path $ouPath `
    -AccountPassword (ConvertTo-SecureString $defaultPassword -AsPlainText -Force) `
    -Enabled $true `
    -ChangePasswordAtLogon $true
}
