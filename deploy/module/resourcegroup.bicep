targetScope='subscription'

param resourceGroupEntity string
param resourceGroupLocation string = 'ukwest'

resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: 'rg-${resourceGroupEntity}-${substring(resourceGroupLocation,0,3)}'
  location: resourceGroupLocation
}
