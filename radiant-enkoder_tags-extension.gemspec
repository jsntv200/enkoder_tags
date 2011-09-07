# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-enkoder_tags-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-enkoder_tags-extension"
  s.version     = RadiantEnkoderTagsExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantEnkoderTagsExtension::AUTHORS
  s.email       = RadiantEnkoderTagsExtension::EMAIL
  s.homepage    = RadiantEnkoderTagsExtension::URL
  s.summary     = RadiantEnkoderTagsExtension::SUMMARY
  s.description = RadiantEnkoderTagsExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end

  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  s.require_paths = ["lib"]
end
