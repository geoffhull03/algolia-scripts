require 'algolia'

insights = Algolia::Insights::Client.create('', '')

insights.send_events([
{
    eventType: 'view',
    eventName: 'test3',
    objectIds: ['9131042'],
    index: 'tam-data',
    userToken: '12345'
  }]
)