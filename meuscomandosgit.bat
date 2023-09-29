@echo off
set /p commit_message=Digite a descrição do commit: 
git add --all
git commit -m "%commit_message%"
git branch -M main
git push -u origin main