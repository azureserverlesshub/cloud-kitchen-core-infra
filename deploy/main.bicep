targetScope='subscription'

param  deploymentRegion string

module resourceGroup 'module/resourcegroup.bicep' = {
  name: 'core-resource-group'
  params: {
    resourceGroupLocation: deploymentRegion
    resourceGroupEntity: 'core'
  }
}
