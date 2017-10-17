# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geocoder/failover/version'

Gem::Specification.new do |spec|
  spec.name          = "geocoder-failover"
  spec.version       = Geocoder::Failover::VERSION
  spec.authors       = ["Yudi Rahono"]
  spec.email         = ["palanglung@gmail.com"]

  spec.summary       = %q{Simple Geocoder Failover Strategy}
  spec.description   = %q{Use Ruby any? method to failover between backend}
  spec.homepage      = "http://github.com/happyfresh/geocoder-failover"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "geocoder", "~> 1.4.0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
