$edad = read-host " dime tu edad"
for ( $año = 1; $año -le [int]$edad; $año++) 
{
Write-Host "has cumplido $año años"
}