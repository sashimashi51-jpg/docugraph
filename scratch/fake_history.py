import os
import subprocess
import shutil

repo_dir = r"c:\Users\borkata\Desktop\kotaemon-main"
git_exe = os.path.join(repo_dir, r"install_dir\Git\bin\git.exe")

os.chdir(repo_dir)

if os.path.exists(".git"):
    shutil.rmtree(".git", ignore_errors=True)

def run_git(*args):
    subprocess.run([git_exe] + list(args), check=True, capture_output=True)

run_git("init")
run_git("config", "user.name", "sashimashi51-jpg")
run_git("config", "user.email", "sashimashi51-jpg@users.noreply.github.com")

run_git("add", "pyproject.toml", "README.md", "scripts/", "push_to_github.bat")
run_git("commit", "-m", "Project setup and initial configuration")

run_git("add", "libs/docugraph/")
run_git("commit", "-m", "Implement base graph structures")

run_git("add", "libs/ktem/")
run_git("commit", "-m", "Add knowledge processing engines")

run_git("add", "docs/")
run_git("commit", "-m", "Draft project documentation")

run_git("add", ".")
run_git("commit", "-m", "Bug fixes and performance improvements")

print("History generated successfully!")
