echo "###alias" > .bash_profile.sh
echo "alias root='root -l'" >> .bash_profile.sh
echo "alias ls='ls -G'" >> .bash_profile.sh
echo "alias vi='vim'" >> .bash_profile.sh
echo "" >> .bash_profile.sh

echo "###Color Definition" >> .bash_profile.sh
echo "export LSCOLORS=hxfxcxdxbxegedabagacad" >> .bash_profile.sh
echo "" >> .bash_profile.sh

echo "###read ./bashrc" >> .bash_profile.sh
echo "if [ -f ~/.bashrc ]; then" >> .bash_profile.sh
echo "  source ~/.bashrc" >> .bash_profile.sh
echo "fi" >> .bash_profile.sh
echo "" >> .bash_profile.sh
