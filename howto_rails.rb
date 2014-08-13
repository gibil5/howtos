
# Howto - Rails
# ---------------
# Created on: 		5 june 2014
# Last modified:	id. 


# Create a new application 
rails new app
vi Gemfile

bundle install --without production 
bundle update
bundle install


# Create the git repository 
git init
git add . 
git commit -m "Initial commit"

git remote add origin https://github.com/gibil5/demo_app.git
Create the repository on github 
git push -u origin master

git remote rm origin


# Create ressources  
rails generate scaffold User name:string email:string
rails generate scaffold Micropost content:string user_id:integer


# Migrate the Database 
bundle exec rake db:migrate

# Monitor 
rails console




# Deploy into Heroku 

# Be sure that heroku gem is not installed
# Install heroku-toolbelt
# From a root console 
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku login
heroku create 
git push heroku master

# Migrate db 
heroku run rake db:migrate

# Your deployment is in : 
http://tranquil-castle-5874.herokuapp.com/
git@heroku.com:tranquil-castle-5874.git



# Sample app

# Create the new app 
rails new sample_app --skip-test-unit 
# tweak the Gemfile 
bundle install --without production
bundle update
bundle install

# Modify 
# .gitignore
# Add
# initializers/secret_token.rb

rails generate rspec:install
git init
git add . 
git commit -m "Initial commit"

# Updated README
git mv README.rdoc README.md
git commit -am "Improve the README"
git remote add origin https://github.com/gibil5/sample_app.git
# Create the repo on git.com 
git push -u origin master

# Create on Heroku
su
heroku version
heroku login
heroku create
http://damp-tundra-2580.herokuapp.com/ | git@heroku.com:damp-tundra-2580.git
git push heroku master
heroku run rake db:migrate

vi .git/config
        url = ssh://git@github.com/gibil5/sample_app.git

git push 
git push heroku 
heroku run rake db:migrate

git push & git push heroku  & heroku run rake db:migrate

heroku logs

git checkout -b static-pages

# Generate a controller 
rails generate controller StaticPages home help --no-test-framework


# Do TDD
rails generate integration_test static_pages

bundle exec rspec spec/requests/static_pages_spec.rb

