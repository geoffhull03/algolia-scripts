require 'algolia'

#My credentials
client = Algolia::Search::Client.create('', '')
index = client.init_index('')

#clear objects
index.clear_objects


