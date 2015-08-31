#/bin/bash

# Set homedirectory
read -e -p "Set homedir: " -i "/home" HOMEDIR

CURRENTDIR=${PWD}

# Clone git-aware-prompt from github
git clone https://github.com/jimeh/git-aware-prompt.git $HOMEDIR/.bash/git-aware-prompt

touch bash_custom

# Set up symlinks
ln -s -f $CURRENTDIR/bashrc $HOMEDIR/.bashrc
ln -s -f $CURRENTDIR/bash_aliases $HOMEDIR/.bash_aliases
ln -s -f $CURRENTDIR/gitconfig $HOMEDIR/.gitconfig
ln -s -f $CURRENTDIR/gitignore $HOMEDIR/.gitignore
ln -s -f $CURRENTDIR/bash_custom $HOMEDIR/.bash_custom

echo '- - - - - - - '
echo "All done! Review your settings, and do 'exec bash' to set up bash using the new settings"
