# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{open-uri-mapping}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["maiha"]
  s.date = %q{2009-03-03}
  s.description = %q{a wrapper to open-uri that offers filename mapping, which is useful for test}
  s.email = %q{maiha@wota.jp}
  s.extra_rdoc_files = ["README", "MIT-LICENSE"]
  s.files = ["MIT-LICENSE", "README", "Rakefile", "lib/open-uri-mapping.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/maiha/open-uri-mapping}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{a wrapper to open-uri that offers filename mapping, which is useful for test}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
