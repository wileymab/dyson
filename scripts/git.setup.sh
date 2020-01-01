# global ignore
global_ignore=~/.gitignore_global
git config --global core.excludesfile "${global_ignore}"
touch "${global_ignore}"
echo "*.lz" >> "${global_ignore}"
echo ".local" >> "${global_ignore}"

# aliases
git config --global alias.st  'status -s'
git config --global alias.co  checkout
git config --global alias.b   branch
git config --global alias.br  'branch -r'
git config --global alias.lo  'log --oneline'
