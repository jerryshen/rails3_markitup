# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails3_markitup/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["JerryShen"]
  gem.email         = ["hansay99@gmail.com"]
  gem.description   = %q{rails3_markitup is a Rails 3.1 engine that allows you to integrate the MarkItUp text editor into the asset pipeline.}
  gem.summary       = %q{rails3_markitup is a awesome jquery rich text editor}
  gem.homepage      = "https://github.com/jerryshen/rails3_markitup"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "rails3_markitup"
  gem.require_paths = ["lib"]
  gem.version       = Rails3Markitup::VERSION
  
  gem.add_dependency 'rails',     '~> 3.1'
  gem.add_dependency 'bundler',   '~> 1.0'
  gem.add_dependency 'bluecloth'
end