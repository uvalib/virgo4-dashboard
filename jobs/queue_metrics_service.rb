SCHEDULER.every '60s', allow_overlapping: false do

  config = CONFIG['INGEST_SIRSI_MARC_CONVERT_QUEUE_IN']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  config = CONFIG['INGEST_SIRSI_MARC_CONVERT_QUEUE_OUT']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  config = CONFIG['INGEST_HATHI_MARC_CONVERT_QUEUE_IN']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  config = CONFIG['INGEST_HATHI_MARC_CONVERT_QUEUE_OUT']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  config = CONFIG['INGEST_TRACKSYS_ENRICH_QUEUE_IN']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )


  config = CONFIG['INGEST_TRACKSYS_ENRICH_QUEUE_OUT']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )


  config = CONFIG['INGEST_SOLR_UPDATE_QUEUE_IN']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )


  config = CONFIG['INGEST_SOLR_UPDATE_QUEUE_OUT']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  config = CONFIG['INGEST_SOLR_DELETE_QUEUE_IN']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )


  config = CONFIG['INGEST_SOLR_DELETE_QUEUE_OUT']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

  config = CONFIG['INGEST_CACHE_QUEUE_IN']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )


  config = CONFIG['INGEST_CACHE_QUEUE_OUT']

  queue_name = config['queue']
  metric_name = config['metric']
  data_sink = config['id']
  last_n_minutes = CONFIG['INGEST_GENERAL']['last_n_minutes']

  Processor.aws_queue_metrics( queue_name, metric_name, last_n_minutes, data_sink )

end