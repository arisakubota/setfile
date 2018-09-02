#!/bin/bash

DIR="user_setting"
SCRIPT="bashrc.sh"

if [ ! -d ${HOME}/${DIR} ]; then
	mkdir ${HOME}/${DIR}
fi

cd ${HOME}/${DIR} 

echo "#!/bin/bash" > ${SCRIPT} 
echo "" >> ${SCRIPT} 

echo "###color" >> ${SCRIPT} 
echo "PS1=\"\[\033[36m\]\u\[\033[33m\]@\[\033[36m\]\h\[\033[0m\]:\[\033[33m\]\W\[\033[0m\] $\"" >> ${SCRIPT} 
echo "###COLOR definition" >> ${SCRIPT}
echo "export LSCOLORS=hxfxcxdxbxegedabagacad" >> ${SCRIPT}
echo "" >> ${SCRIPT} 

echo "###shell from vim" >> ${SCRIPT}
echo "[[ -n \"\$VIMRUNTIME\" ]] && PS1=\"(VIM) :\[\033[36m\]\u\[\033[33m\]@\[\033[36m\]\h\[\033[0m\]:\[\033[33m\]\W\[\033[0m\] $\"" >> ${SCRIPT} 
echo "" >> ${SCRIPT}

echo "###alias" >> ${SCRIPT}
echo "alias root='root -l'" >> ${SCRIPT}
echo "alias ls='ls -G'" >> ${SCRIPT}

cd -
