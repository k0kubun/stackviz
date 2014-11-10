# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stackviz/version'

Gem::Specification.new do |spec|
  spec.name          = "stackviz"
  spec.version       = Stackviz::VERSION
  spec.authors       = ["Takashi Kokubun"]
  spec.email         = ["takashikkbn@gmail.com"]
  spec.summary       = %q{Visual stack profiler using stackprof.}
  spec.description   = %q{Visual stack profiler using stackprof. This gem is a thin wrapper of stackprof and provides simple API to see profiling result quickly.}
  spec.homepage      = "https://github.com/k0kubun/stackviz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "stackprof", "~> 0.2.7"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "activerecord", "~> 4.1"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
end
