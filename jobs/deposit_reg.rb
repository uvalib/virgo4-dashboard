SCHEDULER.every '30s', allow_overlapping: false do

  service_url = ENV[ 'DEPOSITREG_URL' ]
  data_sink_availability = 'depositreg'
  data_sink_response = 'depositreg-time'
  max_response_time = 2000

  begin
     start_time = Time.now
     response = Requester.get( service_url )
     end_time = Time.now
     if response.code == 200
        response_time = ( ( end_time - start_time ).to_f * 1000 ).to_i
        response_time = max_response_time unless response_time < max_response_time

        send_event( data_sink_availability, { text: 'Up' })
        send_event( data_sink_response, { value: response_time } )
     else
        send_event( data_sink_availability, { text: 'Down' })
        send_event( data_sink_response, { value: 0 } )
     end
  rescue => e
    send_event( data_sink_availability, { text: 'Down' })
    send_event( data_sink_response, { value: 0 } )
  end

end