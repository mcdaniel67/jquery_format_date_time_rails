# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery_format_date_time_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery_format_date_time_rails"
  spec.version       = JqueryFormatDateTimeRails::VERSION
  spec.authors       = ["Kyle McDaniel"]
  spec.email         = ["mcdaniel221@gmail.com"]

  spec.summary       = %q{Rails port of jquery.formatDateTime}
  spec.description   = %q{Rails port of jquery.formatDateTime. Works by just including in application.js.erb}
  spec.homepage      = "https://github.com/mcdaniel67/jquery_format_date_time_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
