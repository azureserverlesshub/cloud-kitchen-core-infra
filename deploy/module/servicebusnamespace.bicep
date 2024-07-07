param entityName string

param entityEnvironment string

@description('Location for all resources.')
param location string = resourceGroup().location

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name:  'sb-${entityName}-${toLower(entityEnvironment)}-${substring(location,0,3)}'
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {

  }
}
