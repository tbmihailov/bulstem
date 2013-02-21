# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bulstem/version"

Gem::Specification.new do |s|
  s.name        = "bulstem"
  s.version     = BulStem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Stanislav Gatev"]
  s.email       = ["s2gatev@gmail.com"]
  s.homepage = 'https://github.com/s2gatev/bulstem'
  s.summary     = %q{A Bulgarian stemmer for Ruby}
  s.description = %q{An implementation of Preslav Nakov's BulStem - inflectional stemming algorithm for Bulgarian language}

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'open-uri'
  s.add_dependency 'unicode'
  s.add_dependency 'robots'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end