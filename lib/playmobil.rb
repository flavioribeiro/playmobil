require "playmobil/version"
require 'gtk2'
require 'gst'

module Playmobil
  def self.init
    Gst.init
    pipeline = Gst::Pipeline.new

    src = Gst::ElementFactory.make("videotestsrc", nil)
    raise "need videotestsrc from gst-plugins-base" if src.nil?
    sink = Gst::ElementFactory.make("autovideosink", nil)
    raise "need autovideosink from gst-plugins-base" if sink.nil?

    pipeline << src << sink
    src >> sink

    pipeline.play

    trap("SIGINT") {
      Gtk.main_quit
    }

    Gtk.main
  end
end
