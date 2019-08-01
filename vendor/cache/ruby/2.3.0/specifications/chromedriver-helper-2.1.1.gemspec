# -*- encoding: utf-8 -*-
# stub: chromedriver-helper 2.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "chromedriver-helper"
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mike Dalessio"]
  s.date = "2019-03-24"
  s.description = "Deprecated in favor of the 'webdrivers' gem as of 2019-03-31. See https://github.com/flavorjones/chromedriver-helper/issues/83"
  s.email = ["mike.dalessio@gmail.com"]
  s.executables = ["chromedriver-helper", "chromedriver-update"]
  s.files = ["bin/chromedriver-helper", "bin/chromedriver-update"]
  s.homepage = "https://github.com/flavorjones/chromedriver-helper"
  s.licenses = ["MIT"]
  s.post_install_message = "\n  +--------------------------------------------------------------------+\n  |                                                                    |\n  |  NOTICE: chromedriver-helper is deprecated after 2019-03-31.       |\n  |                                                                    |\n  |  Please update to use the 'webdrivers' gem instead.                |\n  |  See https://github.com/flavorjones/chromedriver-helper/issues/83  |\n  |                                                                    |\n  +--------------------------------------------------------------------+\n\n"
  s.rubygems_version = "2.5.1"
  s.summary = "Deprecated in favor of the 'webdrivers' gem."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<concourse>, ["~> 0.23"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.8"])
      s.add_runtime_dependency(%q<archive-zip>, ["~> 0.10"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<concourse>, ["~> 0.23"])
      s.add_dependency(%q<nokogiri>, ["~> 1.8"])
      s.add_dependency(%q<archive-zip>, ["~> 0.10"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<concourse>, ["~> 0.23"])
    s.add_dependency(%q<nokogiri>, ["~> 1.8"])
    s.add_dependency(%q<archive-zip>, ["~> 0.10"])
  end
end
