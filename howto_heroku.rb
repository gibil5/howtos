
# Howto - Heroku
# ---------------
# Created on: 		5 june 2014
# Last modified:	id. 

# Get source 
git clone git://github.com/heroku/ruby-sample.git
cd ruby-sample


# Create 
heroku create
# Populate 
git push heroku master
# Open on a browser 
heroku open


gem install heroku
heroku keys:add
heroku install
git push heroku master

