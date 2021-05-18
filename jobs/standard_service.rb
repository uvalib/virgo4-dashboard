SCHEDULER.every '60s', allow_overlapping: false do

  services = [ 'AVAILABILITY_SERVICE',
               'CITATIONS_SERVICE',
               'CLIENT_SERVICE',
               'COLLECTIONS_SERVICE',
               'EDS_ARTICLES_POOL_SERVICE',
               'ILS_SERVICE',
               'PDA_SERVICE',
               'JMRL_POOL_SERVICE',
               'SEARCH_SERVICE',
               'SHELF_BROWSE_SERVICE',
               'SOLR_MASTER',
               'SOLR_REPLICA_0',
               'SOLR_REPLICA_1',
               'SOLR_HATHITRUST_POOL_SERVICE',
               'SOLR_IMAGES_POOL_SERVICE',
               'SOLR_UVALIBRARY_POOL_SERVICE',
               'SUGGESTER_SERVICE',
               'WORLDCAT_POOL_SERVICE' ]

  services.each do |service|

    config = CONFIG[service]

    service_url = config['url']
    service_title = config['title']
    data_sink = config['id']

    Processor.http_status_check( service_url, service_title, data_sink )
  end

end
