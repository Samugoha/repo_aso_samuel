New-Item -Path "C:\Empresa" -ItemType Directory
New-Item -Path "C:\Empresa\Finanzas" -ItemType Directory
New-Item -Path "C:\Empresa\Personal" -ItemType Directory
New-Item -Path "C:\Empresa\Producción" -ItemType Directory
New-Item -Path "C:\Empresa\Ventas" -ItemType Directory
New-SmbShare -Name "Empresa" -Path "C:\Empresa" -ReadAccess "Everyone"
$departamentos = @("Finanzas", "Personal", "Producción", "Ventas")
foreach ($dep in $departamentos) {
    New-SmbShare -Name $dep -Path "C:\Empresa\$dep"
    Grant-SmbShareAccess -Name $dep -AccountName $dep -AccessRight Change -Force
    Grant-SmbShareAccess -Name $dep -AccountName "Administradores" -AccessRight Full -Force
    foreach ($otro in $departamentos) {
        if ($dep -ne $otro) {
            Grant-SmbShareAccess -Name $dep -AccountName $otro -AccessRight Read -Force
        }
    }
}
foreach ($dep in $departamentos) {
    $acl = Get-Acl "C:\Empresa\$dep"
    $acl.SetAccessRuleProtection($true, $false)
    $acl.SetAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule($dep, "Modify", "ContainerInherit,ObjectInherit", "None", "Allow")))
    $acl.SetAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")))
    Set-Acl "C:\Empresa\$dep" $acl
}
