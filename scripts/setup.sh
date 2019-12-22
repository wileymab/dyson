tag='shell-utils'

echo ""
echo "$tag: Preliminary checks"
echo ""
if [ ! -z "$(which make)" ]; then
  echo "$tag: Make found.  :)"
else
  echo "$tag: Make utility is required to install supporting tools. Please ensure make is installed and on your path before
 continuing."
  exit 1
fi

echo ""
echo "$tag: Installing SHML"
echo ""
# Install SHML for sane terminal colors
sudo bash -c 'curl -sL https://raw.githubusercontent.com/odb/shml/1.1.0/shml.sh -o /usr/local/bin/shml && chmod +x /usr/local/bin/shml'

echo ""
echo "$tag: Creating local config file"
echo ""
touch ~/Projects/shell-utils/config.sh

echo ""
echo "$tag: Sourcing shell-utils to ~/.bashrc"
echo ""
echo "source ~/Projects/shell-utils/environments/bashrc.sh" >> ~/.bashrc

echo ""
echo "$tag: Cloning desk utility to local filesystem"
echo ""
# Install desk to make just about everything else work correctly
git clone https://github.com/jamesob/desk.git
echo ""
echo "$tag: Installing desk utility"
echo ""
cd desk && sudo make install && cd ..
desk init

echo ""
echo "$tag: Running desk setup"
echo ""
git clone https://github.com/wileymab/desks.git ~/.desk-git
cp -r ~/.desk-git/* ~/.desk/
rm -rf ~/.desk-git
rm -rf ~/Projects/shell-utils/desk
