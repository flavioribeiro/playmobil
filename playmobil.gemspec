# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'playmobil/version'

Gem::Specification.new do |spec|
  spec.name          = "playmobil"
  spec.version       = Playmobil::VERSION
  spec.authors       = ["Lucas Mundim", "Marcelo Pereira", "Leandro Moreira", "Flavio Ribeiro"]
  spec.email         = ["lucas.mundim@gmail.com", "marcnit@gmail.com", "leandro.ribeiro.moreira@gmail.com", "email@flavioribeiro.com"]
  spec.summary       = %q{GStreamer transcoder pipeline}
  spec.description   = %q{GStreamer transcoder pipeline for the win}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "gstreamer", "~> 2.2.3"
end
