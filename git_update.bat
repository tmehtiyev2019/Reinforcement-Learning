@echo on

cd /d "C:\Users\eljanmuhammed\Documents\Git\Reinforcement-Learning"
:: Add all changes to the staging area
git add .

:: Commit the changes with a message
git commit -m "Automatic update from bash"

:: Push the changes to the remote repository
git push origin main
