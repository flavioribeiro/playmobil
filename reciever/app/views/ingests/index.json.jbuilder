json.array!(@ingests) do |ingest|
  json.extract! ingest, :id, :host
  json.url ingest_url(ingest, format: :json)
end
