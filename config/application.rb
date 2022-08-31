require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

if ['development', 'test'].include? ENV['RAILS_ENV']
  Dotenv::Railtie.load
end

HOSTNAME = ENV['HOSTNAME']
module Shasha
  class Application < Rails::Application
    config.load_defaults 7.0
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
