$Region = "WestUS2"
$RGName = "ml-lab"
Login-AzureRmAccount
New-AzureRmResourceGroup -Name $RGName -Location $Region
New-AzureRmResourceGroupDeployment -ResourceGroupName $RGName -Name ml-resources -TemplateFile .\infrastructure\arm-template.json