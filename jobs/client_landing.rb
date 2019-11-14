SCHEDULER.every '60s', allow_overlapping: false do

  config = CONFIG['CLIENT_LANDING']
  max_response_time = 1000

  service_url = config['url']
  service_title = config['title']
  data_sink = config['id']

  Processor.http_response_check( service_url, service_title, max_response_time, data_sink )

end