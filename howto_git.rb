

# jr@nausicaa: 18 august 2014 


# Adding
cd into the dir

git init 
git add .
git status
git commit -m "Initial commit"
git log

# Remote adding 
git remote add origin https://github.com/gibil5/first_app.git
Login and add repo manually. 
git push -u origin master


# Working 
git add . 
git commit -m "..."
git push -u origin master



# Modify in machine A, get new changes in machine B
In machine A
git add . 
git commit -m "..."
git push -u origin master 

Check on git site 

In machine B
Firs time 
git clone git://github.com/gibil5/dreams.git
The rest 
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

# Remove
git rm fname
