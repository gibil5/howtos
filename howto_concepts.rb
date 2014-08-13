
Design concepts
-----------------
Some high level design concepts

Learning to use Rails is learning an ecology, composed of :
	Sublime 
	Rails
	Ruby
	Rspec
	Cucumber
	FactoryGirl
	Capybara



Model-View-Controller
----------------------
	Model 
	View 
	Controller

The MVC architectural pattern arises from the need of separating 'domain logic' 
(also called 'business logic') from input and presentation logic in a GUI. 

In Rails, when a user interacts with an application, the browser sends a request, 
which is received by a web server, and passed to a Rails Controller. 

In simple cases, the Controller immediately renders a View, which is a template 
that is converted to HTML and sent back to the browser. 

In dynamic pages, the Controller interacts with a Model, which is a Ruby object
that represents an elements of the site (ie a user) and is in charge of communication 
with the database. After interacting with a Model, the Controller renders a View, 
and returns the complete web page as HTML to the browser. 

 

Persistence
-----------
The Users resource uses a database back-end to persist data. 
While the Sessions resources uses a cookie, on the users browser.



REST
------
Representational State Transfer 
It is intended to evoke an image of how a well-designed Web application behaves. 
Presented with a network of Web pages (a virtual state-machine), 
the user progresses through an application by selecting links (state transitions), 
resulting in the next page (representing the next state of the application) 
being transferred to the user and rendered for their use.

Rest actions
	new
	create	POST
	
	edit	PATCH
	update
	index 
	destroy




Rails environment
-------------------
Writing in Rails is amazing because of the extensions that add a huge semantinc flexibility. 

Some of the extensions
	Testing
		Capybara
		FactoryGirl
	Viewing 
		


Concepts
---------
	Authentication
		Identify users of our site

	Authorization 
		Control what they can do



Behaviour-Driven-Development
------------------------

BDD is a design practice, not a testing practice. 
We’re using executable examples of how we want the application to behave. 
But just as Big Design Up Front fails to allow for discovery of features 
and designs that nat-urally emerge through iterative development, 
driving out behavior with examples fails to unearth all of the corner cases 
that we’ll naturally discover by simply using the software.



BDD is a variant of TDD (Test-Driven-Development). 
It emphasizes the behavior of the application, rather than its precise implementation. 
The main tools are Integration Tests. 
In the context of RSPEC, they are known as request specs. 
They allow us to simulate the actions of a user interacting with our application, 
using a web browser. 

Capybara is an extension that provides a natural-language syntax. 

The defining quality of TDD is writing tests first, before the application code. 
The method is to write a FAILING test first. And then implement the code to get it to pass. 

The code writing cycle is called 
"Red/Green/Refactor". 


The BDD triard : Given When Then
Given some context. 
When some event occurs. 
Then I expect some outcome. 


Rspec is a Domain Specific Language (DSL), for describing the behavior of objects. 
Cucumber is a DSL for describing the behavior of applications. 
	

Develop from the outside in


The three principles of BDD
	Enough is enough 		Avoid the pitfalls of Big Design Up Front
	Deliver Stakeholder value
	It is all behavior 
	

The three practices of BDD
Acceptancd Test Driven Planning


Rspec
-------
The specs serve as documentation of the responsibilities of the objects
they exercise. 
Writing test cases is a documentation effort. 





Difference between Cucumber and Rspec
-----------------------------------------
Cucumber describes the behavior from the outside, at the application level. 
It is useful during the design phase. While interacting with the stake holders. 
[eventually with Martin and Justino]

Rspec describes behavior at a much more granular level. 
The expected behavior of instances of actual classes. 



Refactoring
-------------
The process of changing a software system in such a way that it does not alter 
the external behvior of the code yet improves its internal structure.
There are many ways in which we can improve a design:
	- The most common is to remove duplication. 
	- Another is to express intention, using proper abstractions (ie methods, 
	variable names...)
	- Another is the Single Responsibility Principle. 


Outside-In philosophy
---------------------
If the goal is to provide great APIs, 
then the best place to design them is from theirs consumers. 

	

Exploratory Testing
--------------------
A practice where we discover the behavior of an application by interacting directly with it. 





