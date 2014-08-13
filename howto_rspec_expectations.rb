
Rspec::Expectations


One of our goals of BDD is 
getting the words right. 
We want to derive language, practices and processes that support communication
between all members of a team, regardless of each persons understanding of 
technical issues. This is why we like to use nontechnical words like :
Given, When and Then. 
 
Rspec achieves a high level of expressiveness and readability by exploiting 
open classes in Ruby to add the methods : 
should and should_not 
to every object in the system. 


Matchers
------------




  describe Account do			# Example group 
    context "Has just been created" do

      it "should have a balance of 0" do		# Code example 
        account = Account.new
        account.balance.should == Money.new(0, :USD)
      end

    end
  end




