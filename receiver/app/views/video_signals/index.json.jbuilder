json.array!(@video_signals) do |video_signal|
  json.extract! video_signal, :id, :name, :source
  json.url video_signal_url(video_signal, format: :json)
end
