Gem::Specification.new do |s|
  s.name = 'logstash-input-mongodb'
  s.version = '0.1.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This takes entries from mongodb as an input to logstash."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Philip Hutchins"]
  s.email = 'flipture@gmail.com'
  s.homepage = "http://www.phutchins.com"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud'
  s.add_runtime_dependency 'jdbc-sqlite3'
  s.add_runtime_dependency 'sequel'
  s.add_runtime_dependency 'mongo', '>=1.12.2', '< 2.0.0'
  s.add_development_dependency 'logstash-devutils'
end
