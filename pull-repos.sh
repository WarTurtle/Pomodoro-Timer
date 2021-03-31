#!/bin/bash
# command for startup:
# gnome-terminal -- ~/scripts/pull-repos.sh
#
    cd ~/Desktop
    cd RawTurtle
    git pull
    cd ../TurtleShell
    git pull
    cd ../Beckman-code
    git pull
    cd ../apocalypse-jt-fork
    git pull
    cd ../ProjectManagement
    git pull
    cd ../../my-todo-lists
    git pull
    cd ~/mom
    git pull
    cd ~
    git pull
    echo "  "
    echo "All git repositories have been synced to the cloud."
