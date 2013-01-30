Gem::Specification.new do |s|
  s.name = 'bulstem'
  s.version = '0.0.2'
  s.date = '2013-01-30'
  s.summary = "A Bulgarian stemmer for Ruby"
  s.description = "An implementation of Preslav Nakov's BulStem - inflectional stemming algorithm for Bulgarian language"
  s.authors = ['Stanislav Gatev']
  s.email = 's2gatev@gmail.com'
  s.files = [
  	'lib/bulstem.rb',
  	'rules/stem_rules_context_1.txt',
  	'rules/stem_rules_context_2.txt',
  	'rules/stem_rules_context_3.txt',
  	'bulstem.gemspec'
  ]
  s.homepage = 'https://github.com/s2gatev/bulstem-gem'
end