# azure-ml-classification
Demonstration showing how to use Azure Machine Learning Studio to predict income levels

## Getting Started
An Azure RM template is included in `infrastructure/` to create the environment:

<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Flrakai%2Fazure-ml-classification%2Fmaster%2Finfrastructure%2Farm-template.json">
    <img src="https://camo.githubusercontent.com/536ab4f9bc823c2e0ce72fb610aafda57d8c6c12/687474703a2f2f61726d76697a2e696f2f76697375616c697a65627574746f6e2e706e67" data-canonical-src="http://armviz.io/visualizebutton.png" style="max-width:100%;">
</a> 

Using Azure PowerShell, do the following to provision the resources:
```ps1
.\startup.ps1
```
Alternatively, you can perform a one-click deploy with the following button:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Flrakai%2Fazure-ml-classification%2Fmaster%2Finfrastructure%2Farm-template.json">
    <img src="https://camo.githubusercontent.com/9285dd3998997a0835869065bb15e5d500475034/687474703a2f2f617a7572656465706c6f792e6e65742f6465706c6f79627574746f6e2e706e67" data-canonical-src="http://azuredeploy.net/deploybutton.png" style="max-width:100%;">
</a>

## Following Along
1. Navigate to the Azure Machine Learning workspace created by the ARM template and click the link to open Azure Machine Learning Studio
1. Create a new Experiment
1. Build the following model in the designer:
![image](https://user-images.githubusercontent.com/3911650/35004233-836ec1a2-faac-11e7-819c-3da16424f759.png)
1. In the Select Columns for Dataset module properties, remove a subset of features from the dataset so you can see how important they are compared to the model that is trained with all features
1. Run the experiment
1. Compare the model performance by selecting the Evaluate Model's visualize option

## Tearing Down
When finished, remove the Azure resources with:
```ps1
.\teardown.ps1
```

# Acknowledgements
Thanks to the University of California Irvine Machine Learning Lab for hosting the data [here](https://archive.ics.uci.edu/ml/datasets/Census+Income).
