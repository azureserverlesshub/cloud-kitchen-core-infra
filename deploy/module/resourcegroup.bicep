targetScope='subscription'

param resourceGroupEntity string
param resourceGroupLocation string

resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: 'rg-${resourceGroupEntity}-${substring(resourceGroupLocation,0,3)}'
  location: resourceGroupLocation
}
