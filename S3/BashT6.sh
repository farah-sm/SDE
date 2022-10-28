#!/bin/bash

filename=$1
nano=nano
vim=vim
vi=vi


read -p "Which text editor would you like to use (nano, vim or vi): " editor

case $editor in
nano)
        nano $filename;;
vim)
        vim $filename;;
vi)
        vi $filename;;
*)
        echo "Please enter a text editor from the options provided"

esac

