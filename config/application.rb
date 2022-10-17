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
    config.user_class = "User"
    config.i18n.default_locale = "zh-TW"

    config.generators do |g|
      g.test_framework :rspec,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
    end
  end
end
