# Load the rails application
require File.expand_path('../application', __FILE__)
require ::Rails.root.to_s + '/test/factories.rb'
# Initialize the rails application
Montage::Application.initialize!
