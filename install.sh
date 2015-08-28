#/bin/bash

# Set homedirectory
read -e -p "Set homedir: " -i "/home" HOMEDIR

# Clone git-aware-prompt from github
git clone https://github.com/jimeh/git-aware-prompt.git $HOMEDIR/.bash/git-aware-prompt

# Set up symlinks
ln -s bashrc $HOMEDIR/.bashrc
ln -s bash_aliases $HOMEDIR/.bash_aliases
ln -s gitconfig $HOMEDIR/.gitconfig
ln -s gitignore $HOMEDIR/.gitignore

echo '- - - - - - - '
echo "All done! Review your settings, and do 'exec bash' to set up bash using the new settings"
