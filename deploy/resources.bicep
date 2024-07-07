targetScope = 'resourceGroup'
param  deploymentEnvironment string
param  deploymentEntity string

 
module servicebusNamespace 'module/servicebusnamespace.bicep' =  {
  name: 'core-servicebus-namespace'
  params: {
    entityEnvironment: deploymentEnvironment
    entityName: deploymentEntity
  }
}

module cosmosdbaccount 'module/cosmosdb.bicep' = {
  name: 'core-cosmosdb-account'
  params: {
    entityEnvironment: deploymentEnvironment
    entityName: deploymentEntity
  }
}
