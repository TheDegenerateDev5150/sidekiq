# frozen_string_literal: true

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"
require "sidekiq"

module Dummy
  class Application < Rails::Application
    config.root = File.expand_path("../..", __FILE__)
    config.eager_load = false
    config.load_defaults "7.0"
    config.active_job.queue_adapter = :sidekiq
    config.active_support.to_time_preserves_timezone = :zone # 8.0 deprecation
  end
end
