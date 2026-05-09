@echo off
cd c:\Users\borkata\Desktop\kotaemon-main
set PATH=c:\Users\borkata\Desktop\kotaemon-main\install_dir\Git\bin;%PATH%
git add README.md
git commit --no-verify -m "Remove kotaemon reference" > nul 2>&1
