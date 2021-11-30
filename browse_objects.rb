require 'algolia'

#My credentials
client = Algolia::Search::Client.create('', '')
index = client.init_index('')


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

puts res[:hits]


