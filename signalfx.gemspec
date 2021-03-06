# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/signalfx/version'

Gem::Specification.new do |spec|
  spec.name          = "signalfx"
  spec.version       = Version::VERSION
  spec.authors       = ["SignalFx, Inc"]
  spec.email         = ["info@signalfx.com"]

  spec.summary       = "Ruby client library for SignalFx"
  spec.description   = "This is a programmatic interface in Ruby for SignalFx's metadata and ingest APIs. It is meant to provide a base for communicating with SignalFx APIs that can be easily leveraged by scripts and applications to interact with SignalFx or report metric and event data to SignalFx. Library supports Ruby 2.x versions"
  spec.homepage      = "https://signalfx.com"
  spec.license       = "Apache Software License v2 © SignalFx"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  #else
  #  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock", "~> 1.21"
  spec.add_dependency "protobuf", "~> 3.5.1", ">= 3.5.1"
  spec.add_dependency "rest-client", "~> 1.8"
end