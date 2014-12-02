require "bundler/capistrano"
require 'capistrano/ext/multistage'
require "rvm/capistrano"

set :stages, %w{production}
set :default_stage, "production"

set :application, "playmobil"
set :repository,  "git@github.com:flavioribeiro/playmobil.git"
set :user, "playmobil"
set :use_sudo, false
set :deploy_to, "/opt/railsapps/playmobil"

after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :restart, :roles => :app, :on_no_matching_servers => :continue do
    sudo "/etc/init.d/unicorn-shorter_url reload"
  end
end
