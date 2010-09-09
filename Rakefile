# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

Montage::Application.load_tasks

begin
  require 'heroku_deploy'
  HerokuDeploy::Tasks.new(
      :staging_app => "montage-staging",
      :production_app => "montage-production")
rescue LoadError
  puts "heroku_deploy (or a dependency) not available. Install it with: gem install heroku_deploy"
end
