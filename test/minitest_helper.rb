ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require "minitest/autorun"
require "minitest/rails"

class MiniTest::Rails::Spec
  # Add methods to be used by all specs here
end

Turn.config.format = :outline