param  deploymentRegion string

module resourceGroup 'module/resourcegroup.bicep' = {
  name: 'core-resource-group'
  scope: subscription()
  params: {
    resourceGroupLocation: deploymentRegion
    resourceGroupEntity: 'core'
  }
}
