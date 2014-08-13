
# Howto - Git
# ---------------
# Created on: 		5 june 2014
# Last modified:	id. 


# Adding
git init 
git add .
git status
git commit -m "Initial commit"
git log
# Work
git add . 
# Push 
git push -u origin master



# Checkout
git checkout -f

# Remote add 
git remote add origin https://github.com/gibil5/first_app.git




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


