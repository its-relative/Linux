#!/bin/bash

# Navigate to the directory where you want to store the Git repository
cd /media/its_relative/New\ Volume/gitback

# Initialize a Git repository if it doesn't exist
if [[ ! -d .git ]]; then
    git init
fi
# # Define directories to backup (excluding specific ones)
# backup_dirs=(
#     "/bin"
#     "/cdrom"
#     "/etc"
#     "/lib"
#     "/lib64"
#     "/lost+found"
#     "/mnt"
#     "/proc"
#     "/run"
#     "/snap"
#     "/sys"
#     "/usr"
#     "/boot"
#     "/dev"
#     "/home"
#     "/lib32"
#     "/libx32"
#     "/media"
#     "/opt"
#     "/root"
#     "/sbin"
#     "/srv"
#     "/tmp"
#     "/var"
# )


# # Create a temporary directory for backup
# backup_temp="./backup_temp"
# mkdir -p "$backup_temp"

# # Copy contents of selected directories to backup directory
# for dir in "${backup_dirs[@]}"; do
#     rsync -av --exclude="/media" "$dir" "$backup_temp/"
# done

# Commit changes
git config --global user.email "sapytomar10@gmail.com"
git config --global user.name "its-relative" 
# Check if there are changes to commit
if [[ -n $(git status -s) ]]; then
    # Commit changes
    git add .
    git commit -m "Backup $(date +%Y-%m-%d)"

    # Add GitHub repository as remote if it doesn't exist
    if ! git remote get-url origin &>/dev/null; then
        git remote add origin git@github.com:its-relative/unexpected-backup.git
    fi

    # Push changes to GitHub
    git push -u origin HEAD
else
    echo "No changes to commit."
fi

# Clean up temporary backup directory
rm -rf "$backup_temp"