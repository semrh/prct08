# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-gitpusher"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["hatone"]
  s.date = "2012-02-03"
  s.description = "Guard::Gitpusher automatically runs git commands when watched files are modified."
  s.email = ["b1006006@gmail.com"]
  s.homepage = "https://github.com/hatone/guard-gitpusher"
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard-gitpusher"
  s.rubygems_version = "1.8.11"
  s.summary = "Guard gem for git"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 0.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0.rc"])
    else
      s.add_dependency(%q<guard>, [">= 0.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.2"])
      s.add_dependency(%q<rspec>, ["~> 2.0.0.rc"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.2"])
    s.add_dependency(%q<rspec>, ["~> 2.0.0.rc"])
  end
end
