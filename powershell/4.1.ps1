$nombre = Read-Host "introduce tu nombre"
[int]$numero = Read-Host "dime un número "
for ($contador = 1; $contador -le $numero; $contador++ )
{
Write-Host $nombre
}