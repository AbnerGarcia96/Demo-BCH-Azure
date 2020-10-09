# Para instalar las librerías de PowerShell:
#   Install-Module -Name Az -AllowClobber -Scope CurrentUser

# Para permitir la ejecución de scripts sin firma:
#   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
#   Get-ExecutionPolicy

$nombre = "MACGLab1"
$grupo = "MACGLab1"
$ubicacion = "Central US"
$archivo = "MACGLab1.json"
$archivoParametros = "MACGLab1.parameters.json"

#Crea el grupo de recursos en Azure
az group create --name $grupo --location $ubicacion

# Crea los recursos de la plantilla en el archivo JSON
az deployment group create `
  --name $nombre `
  --resource-group $grupo `
  --template-file $archivo `
  --parameters $archivoParametros