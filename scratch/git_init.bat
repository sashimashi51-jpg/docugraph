@echo off
cd c:\Users\borkata\Desktop\kotaemon-main
set PATH=c:\Users\borkata\Desktop\kotaemon-main\install_dir\Git\bin;%PATH%
git init
git config user.name "borkata"
git config user.email "borkata@example.com"
git add .
git commit -m "Initial commit of Docugraph for Windows"
