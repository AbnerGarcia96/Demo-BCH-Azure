# Para instalar las librerías de PowerShell:
#   Install-Module -Name Az -AllowClobber -Scope CurrentUser

# Para permitir la ejecución de scripts sin firma:
#   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
#   Get-ExecutionPolicy

$nombre = "MACGLab1"
$grupo = "MACGLab1"
$ubicacion = "westus"
$archivo = "C:\Users\abner\Documents\Workspace\.NET\Net Core Demo\ARM\MACGLab1.json"
$archivoParametros = "C:\Users\abner\Documents\Workspace\.NET\Net Core Demo\ARM\MACGLab1.parameters.json"

#Crea el grupo de recursos en Azure
New-AzResourceGroup -Name $grupo -Location $ubicacion

# Crea los recursos de la plantilla en el archivo JSON
New-AzResourceGroupDeployment -Name $nombre `
  -ResourceGroupName $grupo `
  -TemplateFile $archivo `
  -TemplateParameterFile $archivoParametros