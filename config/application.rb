require_relative "boot"

require "rails/all"
require "nested_form/engine"
require "nested_form/builder_mixin"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Knwldge
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.active_job.queue_adapter = :sidekiq
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address: ENV.fetch("SMTP_ADDRESS"),
      authentication: :plain,
      domain: ENV.fetch("SMTP_DOMAIN"),
      enable_starttls_auto: true,
      password: ENV.fetch("SMTP_PASSWORD"),
      port: 587,
      user_name: ENV.fetch("SMTP_USERNAME"),
    }
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
