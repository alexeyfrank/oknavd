set :rails_env, "production"
set :branch, 'master'
set :user, 'oknavd_production'
set :keep_releases, 5

role :web, '62.76.191.117'
role :app, '62.76.191.117'
role :db,  '62.76.191.117', :primary => true