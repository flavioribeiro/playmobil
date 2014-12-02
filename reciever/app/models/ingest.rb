class Ingest
  include Mongoid::Document

  field :url, type: String

  validates_presence_of :url

end
