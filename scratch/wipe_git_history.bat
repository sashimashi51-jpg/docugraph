@echo off
cd c:\Users\borkata\Desktop\kotaemon-main

:: Изтриваме напълно старата история на Git (ако съществува)
rmdir /S /Q .git

:: Добавяме Git към пътя
set PATH=c:\Users\borkata\Desktop\kotaemon-main\install_dir\Git\bin;%PATH%

:: Създаваме чисто ново хранилище от нулата
git init
git config user.name "sashimashi51-jpg"
git config user.email "sashimashi51-jpg@users.noreply.github.com"

:: Добавяме и запазваме всичко като един-единствен първи commit
git add .
git commit -m "Initial release of Docugraph" > nul 2>&1

echo Напълно изчистена история!
