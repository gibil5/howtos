

You have learnt how to find and discover. 
Now, make an effort to learn how to conserve. 



*******************************************************************************
Protocols - Modify the data model
*******************************************************************************


Modify the User model specs
-----------------------------
describe User do
	it { should respond_to(:authenticate) }
end

	
Generate a migration
-----------------------
rails generate migration add_remember_token_to_users



Add content to the generated class
------------------------------------
class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember_token, :string
    add_index  :users, :remember_token
  end
end



Update test and development databases
----------------------------------------
bundle exec rake db:migrate
# Dep - bundle exec rake test:prepare
rake db:migrate RAILS_ENV=test

Verify with db browser
-------------------------
sqlitebrowser development.sqlite3 


Run tests
Be sure that the User model specs are passing
----------------------------------------------
bundle exec rspec spec/models/user_spec.rb 






Other
******
Generate a Sessions controller
rails generate controller Sessions --no-test-framework

Generate an Integration Test, for the authentication machinery
rails generate integration_test authentication_pages





