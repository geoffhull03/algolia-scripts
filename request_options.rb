require 'algolia'

#My credentials
client = Algolia::Search::Client.create('VYCO1SFUVG', '')
index = client.init_index('')

# request_options = {
#     'read_timeout': 0.001
# }

# res = index.search('appleasdfasdfasdf', {
#     params: request_options
# })

# puts res
res = index.browse_objects({ 
    query: '',
    hitsPerPage: 1,
    attributesToRetrieve: [
        "parentPartNumber",
        "sts_oos",
        "sts_lastupdate",
        "pick_oos",
        "pick_lastupdate",
        "sts_oos",
        "sts_lastupdate",
        "lsi_oos",
        "lsi_lastupdate",
        "invActive"]
})


