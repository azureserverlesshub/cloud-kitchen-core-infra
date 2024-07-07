targetScope= 'subscription'
param  deploymentRegion string
param  deploymentEnvironment string
param  deploymentEntity string

module resourceGroup 'module/resourcegroup.bicep' = {
  name: 'core-resource-group'
  params: {
    resourceGroupLocation: deploymentRegion
    resourceGroupEntity: deploymentEntity
    resourceGroupEnvironment:deploymentEnvironment
  }
}

output resourceGroupName string = resourceGroup.outputs.resourceGroupName
