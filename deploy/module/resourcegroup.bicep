targetScope='subscription'

param resourceGroupEntity string
param resourceGroupLocation string
param resourceGroupEnvironment string

resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: 'rg-${resourceGroupEntity}-${toLower(resourceGroupEnvironment)}-${substring(resourceGroupLocation,0,3)}'
  location: resourceGroupLocation
}
