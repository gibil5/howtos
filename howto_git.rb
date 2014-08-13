
# Howto - Git
# ---------------
# Created on: 		5 june 2014
# Last modified:	id. 



# Adding
cd into the dir

git init 
git add .
git status
git commit -m "Initial commit"
git log


# Work
git add . 
git commit -m "..."


# Remote add 
Login and add manually. 
git remote add origin https://github.com/gibil5/first_app.git

# Push 
git push -u origin master


#jx: 13 aug 2014 
# Modify in machine A, get new changes in machine B
In machine A
git add . 
git commit -m ""
git push -u origin master 

Check on git site 

In machine B
git pull 







# Checkout
git checkout -f




# Create a Branch, for new features 
git checkout -b modify-README
git branch

git mv README README.markdown
git status
git status
git commit -a -m "Improved the Readme file"


# Merge
git checkout master
git merge modify-README

# Delete 
git branch -d modify-README

# Push 
git push 


