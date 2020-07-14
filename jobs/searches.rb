SCHEDULER.every '60s', allow_overlapping: false do

  search_configs = [ 'SEARCH_COUNT_5M',
                     'SEARCH_COUNT_15M',
                     'SEARCH_COUNT_60M',
                     'SEARCH_COUNT_24H' ]
  search_configs.each do |search_config|

    # inbound
    config = CONFIG[search_config]

    metric_name = config['metric']
    data_sink = config['id']
    last_n_minutes = "#{config['last_n_minutes'].to_i}"

    Processor.aws_custom_metrics( metric_name, last_n_minutes, data_sink )

  end

end
