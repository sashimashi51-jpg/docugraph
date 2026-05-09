@echo off
:: Отиваме в папката на проекта
cd /d "%~dp0"

:: Добавяме портативния Git към пътя
set PATH=%~dp0install_dir\Git\bin;%PATH%

echo Запазване на последните промени (уникалния README)...
git add .
git commit -m "Update README to be 1:1 with original but cooler" >nul 2>&1

echo Свързване с GitHub...
git remote add origin https://github.com/sashimashi51-jpg/docugraph.git 2>nul

echo Качване на файловете в GitHub. Може да се отвори прозорец на браузъра за вход!
git push -u origin master

echo.
echo Готово! Ако няма грешки нагоре, проектът ви е качен успешно.
pause
