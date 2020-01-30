SCHEDULER.every '60s', allow_overlapping: false do

  config = CONFIG[ 'EDS_ARTICLES_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_ARCHIVAL_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_CATALOG_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_CATALOG_BROAD_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_MUSIC_RECORDINGS_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_MUSICAL_SCORES_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_RAREBOOKS_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_SERIALS_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_SOUND_RECORDINGS_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_THESIS_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

  config = CONFIG[ 'SOLR_VIDEO_POOL_SERVICE' ]

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']
  Processor.http_status_check( service_url, service_title, data_sink )

end