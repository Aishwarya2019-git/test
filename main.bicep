param actionGroupName string
param emailAddressName string
param emailAddress string
param groupShortName string
var location = 'global'

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupName
  properties: {
    groupShortName:groupShortName
    emailReceivers: [
      {
        emailAddressName: emailAddressName
        emailAddress: emailAddress
        useCommonAlertSchema: true
      }
    ]
  }
}
