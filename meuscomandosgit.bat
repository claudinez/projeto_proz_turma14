@echo off
set /p commit_message=Digite a descrição do commit: 
git add --all
git commit -m "%commit_message%"
git branch -M main
git push -u origin main

Para inicio do git com a primeira importação git init 
trocar --> git config user.name claudinez 
trocar --> git config user.email andrade.claudinez@gmail.com git add --all 
escrever --> git commit -m "Descricao do commit -m" 
conexão --> git remote add origin https://github.com/claudinez/projeto_proz_turma14.git 
git branch -M main 
git push -u origin main 
git branch nome-da-branch 
git checkout nome-da-branch 

**Depois da primeira importação atualização do git 
git add --all 
git commit -m "Descricao do commit -m" 
git branch -M main 
git push -u origin main 
git branch nome-da-branch 
git checkout nome-da-branch 

*baixar arquivo repositorio github git pull git fetch git merge
