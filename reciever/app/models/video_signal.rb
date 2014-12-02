class VideoSignal
  include Mongoid::Document

  field :name, type: String
  field :source, type: String
  field :bitrate, type: Array

end
