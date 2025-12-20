#!/bin/bash

echo "Checking for config.conf"
if [ -f "$HOME/.prompt/config.conf" ]; then
    echo "already installed, abort"
else
    clear
    echo "lets config ya shell!"
    sleep 1
    cd "$HOME"
    mkdir -p .prompt
    cd .prompt
    touch config.conf
    echo "if typed exit exit the shell ? (y/n)"
    read response
    if [[ $response == "y" ]]; then
cat <<EOF > "config.conf"
exittobreak=true
EOF
    else
        echo "The response was not 'y' so config was not modified"    
    fi
echo "Please imput your shell"
echo "Important:"
echo '$CURRENTDIR - Show current dir'
echo '$USERNAME - Username and the host name'
echo "Renember to imput a space at the end of your response like if you imput '\$USERNAME \$CURRENTDIR >' imput a space at the end so the commands wont be at the side of the prompt and be separated!"
read imputshell
cat <<EOF >> "config.conf"
prompt=$imputshell
EOF
    echo
    echo "config in $HOME/.prompt/config.conf"
fi

