# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = "spree-point-of-sale"
  s.version = "1.2.1"

  s.author = ["Torsten R, Nishant Tuteja, Manish Kangia"]


  s.email     = 'info@vinsol.com'
  s.homepage  = 'http://vinsol.com'  
  s.license   = 'MIT'

  s.files     = `git ls-files`.split("\n")

  s.require_path = ["lib"]
  s.required_ruby_version = ">= 1.9.3"

  s.requirements << "none"
  s.rubygems_version = "2.0.3"

  s.summary = "Point of sale screen for Spree"
  s.description = "Extend functionality for spree to give shop like ordering ability through admin end"


  s.add_dependency('spree_core', '~> 2.4.0')
  s.add_dependency('barby', '>= 0')
  s.add_dependency('prawn', '>=0')
  s.add_dependency('chunky_png', '>=0')
end
