# git global author
echo -n "Git Author Full Name: "
read author_full_name
git config --global user.name "${author_full_name}"

echo -n "Git Author Email: "
read author_email
git config --global user.email "${author_email}"

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
