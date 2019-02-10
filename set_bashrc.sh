#!/bin/bash

DIR="user_setting"
SCRIPT="bashrc.sh"

if [ ! -d ${HOME}/${DIR} ]; then
	mkdir ${HOME}/${DIR}
fi

cd ${HOME}/${DIR} 

echo "#!/bin/bash" > ${SCRIPT} 
echo "" >> ${SCRIPT} 

echo "# visualize command line" >> ${SCRIPT} 
echo "PS1=\"\[\033[36m\]\u\[\033[33m\]@\[\033[36m\]\h\[\033[0m\]:\[\033[33m\]\W\[\033[0m\] $\"" >> ${SCRIPT} 
echo "# color definition" >> ${SCRIPT}
echo "export LSCOLORS=hxfxcxdxbxegedabagacad" >> ${SCRIPT}
echo "" >> ${SCRIPT} 

echo "# shell from vim" >> ${SCRIPT}
echo "[[ -n \"\$VIMRUNTIME\" ]] && PS1=\"(VIM) :\[\033[36m\]\u\[\033[33m\]@\[\033[36m\]\h\[\033[0m\]:\[\033[33m\]\W\[\033[0m\] $\"" >> ${SCRIPT} 
echo "" >> ${SCRIPT}

echo "# alias" >> ${SCRIPT}
echo "alias root='root -l'" >> ${SCRIPT}
echo "alias ls='ls --color'" >> ${SCRIPT}
echo "alias pbcopy='xsel --clipboard --input'" >> ${SCRIPT}
echo "alias ssh='ssh -2 -C -Y'" >> ${SCRIPT}

chmod 744 ${SCRIPT}

cd -

echo "if [ -f ${HOME}/${DIR}/bashrc.sh ]; then" >> ${HOME}/.bashrc
echo "  source ${HOME}/${DIR}/bashrc.sh" >> ${HOME}/.bashrc
echo "fi" >> ${HOME}/.bashrc
