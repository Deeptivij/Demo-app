# -*- encoding: utf-8 -*-
# stub: gitkit-ruby-client 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gitkit-ruby-client"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jin Liu"]
  s.date = "2014-05-15"
  s.description = "Google Identity Toolkit Ruby client library"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "https://developers.google.com/identity-toolkit/v3"
  s.rubygems_version = "2.4.8"
  s.summary = "Google Identity Toolkit Ruby client"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<jwt>, ["= 0.1.11"])
    else
      s.add_dependency(%q<addressable>, [">= 2.3.2"])
      s.add_dependency(%q<faraday>, [">= 0.9.0"])
      s.add_dependency(%q<multi_json>, [">= 1.0.0"])
      s.add_dependency(%q<jwt>, ["= 0.1.11"])
    end
  else
    s.add_dependency(%q<addressable>, [">= 2.3.2"])
    s.add_dependency(%q<faraday>, [">= 0.9.0"])
    s.add_dependency(%q<multi_json>, [">= 1.0.0"])
    s.add_dependency(%q<jwt>, ["= 0.1.11"])
  end
end
