$archivo = Read-Host "-Dime el fichero a buscar: "
$directorio = Read-Host "En que Directory se encuentra : "

$PScore = "${directorio}${archivo}"

$Existe = Test-Path $PScore

If ($Existe -eq $True) {
  Write-Host "El ${archivo} se ha encontrado"
  Get-ChildItem -Path ${directorio} -Filter ${archivo}
} Else {
  Write-Host "No se encuentra el archivo ${archivo} en el directorio ${directorio}"
}
