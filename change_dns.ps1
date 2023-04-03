Write-Host "Seleccionar DNS a utilizar"
Write-Host "1- Servidores Locales"
Write-Host "2- Clouflare (1.1.1.1 , 1.0.0.1"
Write-Host "3- Google (8.8.8.8, 8.8.4.4)"

$option = Read-Host -Prompt "Por favor ingresar la opción deseada"

switch($option){

"1" {Set-DnsClientServerAddress -InterfaceIndex 20 -ServerAddresses ("192.168.10.7","192.168.10.3")}
"2" {Set-DnsClientServerAddress -InterfaceIndex 20 -ServerAddresses ("1.1.1.1","1.0.0.1")}
"3" {Set-DnsClientServerAddress -InterfaceIndex 20 -ServerAddresses ("8.8.8.8","8.8.4.4")} 

}
 





