#/bin/bash

CURRENTDIR=${PWD}

# create bash directory if it doesn't exist yet
mkdir ~/.bash

# Clone git-aware-prompt from github
git clone https://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt

# Set up symlinks
ln -s -f $CURRENTDIR/bashrc ~/.bashrc
ln -s -f $CURRENTDIR/bash_preset_aliases ~/.bash_preset_aliases
ln -s -f $CURRENTDIR/gitconfig ~/.gitconfig
ln -s -f $CURRENTDIR/gitignore ~/.gitignore

echo '- - - - - - - '
echo "All done! Review your settings, and do 'exec bash' to set up bash using the new settings"
