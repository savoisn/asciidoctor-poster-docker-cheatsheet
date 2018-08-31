# -*- encoding: utf-8 -*-
# stub: guard-shell 0.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-shell".freeze
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Joshua Hawxwell".freeze]
  s.date = "2014-12-08"
  s.description = "    Guard::Shell automatically runs shell commands when watched files are\n    modified.\n".freeze
  s.email = "m@hawx.me".freeze
  s.homepage = "http://github.com/hawx/guard-shell".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Guard gem for running shell commands".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>.freeze, [">= 2.0.0"])
      s.add_runtime_dependency(%q<guard-compat>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<guard>.freeze, [">= 2.0.0"])
      s.add_dependency(%q<guard-compat>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<guard>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<guard-compat>.freeze, ["~> 1.0"])
  end
end
