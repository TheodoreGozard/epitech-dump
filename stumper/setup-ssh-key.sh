#!/bin/sh
set -e

mkdir -p /home/$USER/.ssh
ssh-keygen -t ed25519 -b 4096 -f /home/$USER/.ssh/id_ed25519 -N "" -C "$USER@github"

gh auth login -p "ssh" -s "admin:public_key" --skip-ssh-key --web
gh ssh-key add "/home/$USER/.ssh/id_ed25519.pub" --title "stumper"

git config --global user.email "$USER@epitech.eu"
git config --global user.name "$USER"
