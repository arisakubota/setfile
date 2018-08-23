echo "###prompt color system" > test.sh
echo "PS1=\"\[\033[36m\]\h\[\033[0m\]\[\033[33m\]\W\[\033[0m\]\[\033[36m\]\u\[\033[0m\] $\"" >> test.sh
echo "" >> test.sh

echo "###ROOT" >> test.sh
echo "#export ROOTSYS=(path)" >> test.sh
echo "#export PATH=\$ROOTSYS/bin:\$PATH" >> test.sh
echo "#LD_LIBRARY_PATH=\$ROOTSYS/lib/root:\$LD_LIBRARY_PATH" >> test.sh
echo "" >> test.sh
