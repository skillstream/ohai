# frozen_string_literal: true
$:.unshift File.expand_path("lib", __dir__)
require "ohai/version"

Gem::Specification.new do |s|
  s.name = "ohai"
  s.version = Ohai::VERSION
  s.summary = "Ohai profiles your system and emits JSON"
  s.description = s.summary
  s.license = "Apache-2.0"
  s.author = "Adam Jacob"
  s.email = "adam@chef.io"
  s.homepage = "https://github.com/chef/ohai/"

  s.required_ruby_version = ">= 2.6"

  s.add_dependency "chef-config", ">= 14.12", "< 17"
  s.add_dependency "chef-utils", ">= 16.0", "< 17"
  s.add_dependency "ffi", "~> 1.9"
  s.add_dependency "ffi-yajl", "~> 2.2"
  s.add_dependency "ipaddress"
  s.add_dependency "mixlib-cli", ">= 1.7.0" # 1.7+ needed to support passing multiple options
  s.add_dependency "mixlib-config", ">= 2.0", "< 4.0"
  s.add_dependency "mixlib-log", ">= 2.0.1", "< 4.0"
  s.add_dependency "mixlib-shellout", "~> 3.2", ">= 3.2.5"
  s.add_dependency "plist", "~> 3.1"
  s.add_dependency "train-core"
  s.add_dependency "wmi-lite", "~> 1.0"
  # Note for ohai developers: If chef-config causes you grief, try:
  #     bundle install --with development
  # this should work as long as chef is a development dependency in Gemfile.
  #

  s.bindir = "bin"
  s.executables = %w{ohai}

  s.require_path = "lib"
  s.files = %w{LICENSE Gemfile} + Dir.glob("*.gemspec") + Dir.glob("lib/**/*")
end
