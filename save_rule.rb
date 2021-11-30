require 'algolia'

client = Algolia::Search::Client.create('', '')
index = client.init_index('tam_data')

index.save_rule(
    rule = {
        objectID: 'xyz',
        consequence: {
          hide: [
            { objectID: '9131042'},
            { objectID: '1696302'},
            { objectID: '5353024'}
          ]
        }
      }
)