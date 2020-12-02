SCHEDULER.every '30m', allow_overlapping: false do

  queue_configs = [ 'INGEST_DYNAMIC_MARC_CONVERT_QUEUE',
                    'INGEST_HATHI_MARC_CONVERT_QUEUE',
                    'INGEST_SIRSI_MARC_CONVERT_QUEUE',
                    'INGEST_IMAGE_TRACKSYS_ENRICH_QUEUE',
                    'INGEST_SIRSI_TRACKSYS_ENRICH_QUEUE',
                    'INGEST_DEFAULT_SOLR_UPDATE_QUEUE',
                    'INGEST_IMAGE_SOLR_UPDATE_QUEUE',
                    'INGEST_IMAGE_DOC_QUEUE',
                    'INGEST_CACHE_QUEUE' ]
  queue_configs.each do |queue_config|

    # inbound
    config = CONFIG["#{queue_config}_IN"]

    queue_name = config['queue']
    metric_name = config['metric']
    data_sink = "#{config['id']}-hour"
    last_n_minutes = "#{CONFIG['INGEST_GENERAL']['last_n_hours'].to_i * 60}"

    Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

    # outbound
    config = CONFIG["#{queue_config}_OUT"]

    queue_name = config['queue']
    metric_name = config['metric']
    data_sink = "#{config['id']}-hour"
    last_n_minutes = "#{CONFIG['INGEST_GENERAL']['last_n_hours'].to_i * 60}"

    Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  end

end