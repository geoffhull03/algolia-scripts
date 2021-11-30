require 'algolia'

#My credentials
client = Algolia::Search::Client.create('', '')
index = client.init_index('')

index.clear_rules

