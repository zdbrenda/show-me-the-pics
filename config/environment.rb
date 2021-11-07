# Load the Rails application.
require_relative "application"

flickr_config = File.join(Rails.root, 'config', 'flickr_config.rb')
load(flickr_config) if File.exist?(flickr_config)

# Initialize the Rails application.

Rails.application.initialize!
