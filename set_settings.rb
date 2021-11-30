require 'algolia'

#My credentials
client = Algolia::Search::Client.create('VYCO1SFUVG', '')
index = client.init_index('')

#settings = index.get_settings
 settings = index.set_settings({
    replicas: [
        'virtual(tam_data_replica_1)',
        'virtual(tam_data_replica_2)'
      ]
 })



