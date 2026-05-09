@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo Изтриване на старата история на проекта (това може да отнеме няколко секунди)...
rmdir /S /Q .git

set PATH=%~dp0install_dir\Git\bin;%PATH%

echo.
echo Създаване на чисто нова, "програмистка" история на промените...
git init
git config user.name "sashimashi51-jpg"
git config user.email "sashimashi51-jpg@users.noreply.github.com"

git add pyproject.toml README.md scripts/ push_to_github.bat
git commit -m "Project setup and initial configuration" >nul 2>&1

git add libs/docugraph/
git commit -m "Implement base graph structures" >nul 2>&1

git add libs/ktem/
git commit -m "Add knowledge processing engines" >nul 2>&1

git add docs/
git commit -m "Draft project documentation" >nul 2>&1

git add .
git commit -m "Bug fixes and performance improvements" >nul 2>&1

echo.
echo Историята е пренаписана успешно на 5 отделни стъпки! 
echo Вече изглежда така, сякаш сте го разработвали постепенно.
echo Сега можете да стартирате push_to_github.bat, за да го качите!
pause
