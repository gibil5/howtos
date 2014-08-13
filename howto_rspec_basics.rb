
Howto 
Behavior Driven Development
----------------------------

Rspec provides a domain specifica language for defining the behavior of objects. 


The describe method defines an EXAMPLE GROUP. 
The it() method defines a CODE EXAMPLE.

Example group : a group of code examples. 
Code example: an executable example of how the subject code can be used
and its expected behavior in a given context. 
In bd, we write the code examples before the code they document. 



Example
---------

  #describe "A new Account" do			# Example group 

  describe Account do			# Example group 
    context "Has just been created" do

      it "should have a balance of 0" do		# Code example 
        account = Account.new
        account.balance.should == Money.new(0, :USD)
      end

    end
  end


Syntax
--------

before
context
it 
before 
pending 
before 
	each
	all
after
	each
	all
around each 


describe User do
	before(:each) do
		..
	end 

	context "with no roles assigned" do 
		it "is not allowed to view protected content" do 
		  pending "cleaning out the fryer"
		  ..
		end
	end

	after (:each) do
		..
	end 
end



Helper methods

Sharing helper methods



Shared examples
-----------------

# Here, we describe the examples to be shared 
shared_examples_for "any pizza" do
  it "tastes really good" do
    @pizza.should taste_really_good
  end
  it "is available by the slice" do
    @pizza.should be_available_by_the_slice
  end
end

# Here, we share the examples 
describe "New York style thin crust pizza" do

  before(:each) do
    @pizza = Pizza.new(:region => 'New York', :style => 'thin crust')
  end

  it_behaves_like "any pizza"

  it "has a really great sauce" do
    @pizza.should have_a_really_great_sauce
  end

end

describe "Chicago style stuffed pizza" do

  before(:each) do
    @pizza = Pizza.new(:region => 'Chicago', :style => 'stuffed')
  end

  it_behaves_like "any pizza"

  it "has a ton of cheese" do
    @pizza.should have_a_ton_of_cheese
  end

end




Nested example groups
----------------------
describe Stack do

  describe "when full" do
    describe "when it receives push" do
      it "should raise an error" do
        stack = Stack.new(:capacity => 10)
        (1..10).each {|n| stack.push n}
        lambda { stack.push 11 }.should raise_error(StackOverflowError)
      end
    end
  end

  describe "when almost full (one less than capacity)"
    describe "when it receives push" do
      it "should be full" do
        stack = Stack.new(:capacity => 10)
        (1..9).each {|n| stack.push n}
        stack.push 10
        stack.should be_full
      end
    end
  end

end




What we have learned

•  Declare an example group using the describe( ) method
•  Declare an example using the it( ) method
•  Declare an example to be pending by either omitting the block or
using the pending( ) method inside the block
•  Nest example groups for cohesive organization
•  Declare code to be run before, after, and around examples with
hooks
•  Define helper methods within an example group that are available
to each example in that group
•  Share examples across multiple groups

