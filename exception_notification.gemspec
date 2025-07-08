# frozen_string_literal: true

require File.expand_path("lib/exception_notification/version", __dir__)

Gem::Specification.new do |s|
  s.name = "exception_notification"
  s.version = ExceptionNotification::VERSION
  s.authors = ["Jamis Buck", "Josh Peek", "Sebastián Martínez", "Kevin McPhillips"]
  s.summary = "Exception notification for Ruby applications"
  s.homepage = "https://kmcphillips.github.io/exception_notification/"
  s.email = "github@kevinmcphillips.ca"
  s.license = "MIT"
  s.metadata = {"changelog_uri" => "https://github.com/kmcphillips/exception_notification/blob/master/CHANGELOG.rdoc"}

  s.required_ruby_version = ">= 3.2"

  s.files = Dir[
    "lib/**/*",
    "docs/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "*.md",
    "*.rdoc"
  ].reject { |f| File.directory?(f) }
  s.require_path = "lib"

  s.add_dependency("actionmailer", ">= 7.1", "< 9")
  s.add_dependency("activesupport", ">= 7.1", "< 9")

  s.add_development_dependency "aws-sdk-sns", "~> 1"
  s.add_development_dependency "carrier-pigeon", ">= 0.7.0"
  s.add_development_dependency "dogapi", ">= 1.23.0"
  s.add_development_dependency "hipchat", ">= 1.0.0"
  s.add_development_dependency "httparty", "~> 0.10.2"
  s.add_development_dependency "mocha", ">= 0.13.0"
  s.add_development_dependency "mock_redis", "~> 0.19.0"
  s.add_development_dependency "net-smtp"
  s.add_development_dependency "ostruct"
  s.add_development_dependency "rails", ">= 7.1", "< 9"
  s.add_development_dependency "resque", "~> 1.8.0"
  s.add_development_dependency "sidekiq", ">= 5.0.4"
  s.add_development_dependency "slack-notifier", ">= 1.0.0"
  s.add_development_dependency "standard"
  s.add_development_dependency "timecop", "~> 0.9.0"
end
