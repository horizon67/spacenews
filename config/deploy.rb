# config valid only for current version of Capistrano
lock "3.9.0"

set :application, "spacenews"
set :repo_url, "git@bitbucket.org:shinichimaruo/spacenews.git"

set :branch, 'master'
set :deploy_to, "/home/app/spacenews"
set :keep_releases, 5
set :rbenv_type, :user
set :rbenv_ruby, '2.4.1'
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_path, '/home/app/.rbenv'
set :rbenv_roles, :all
set :linked_dirs, %w{log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}
set :linked_files, %w{.env}
set :bundle_binstubs, nil
set :default_stage, "production"
set :log_level, :info

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# set :deploy_to, '/var/www/my_app'
# set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
      invoke 'unicorn:restart'
    end
  end

  after :publishing, :restart
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  #after :finishing, 'deploy:cleanup'

end
