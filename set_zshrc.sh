#!/bin/zsh

DIR="user_setting"
SCRIPT="zshrc.sh"

if [ ! -d ${HOME}/${DIR} ]; then
	mkdir ${HOME}/${DIR}
fi

cd ${HOME}/${DIR}

echo '#!/bin/zsh' > ${SCRIPT}
echo '' >> ${SCRIPT}

echo '# set color scheme' > ${script}
echo 'autoload -Uz colors && colors' > ${script}

echo '# prompt setting' > ${script}
echo 'PROMPT="${fg[cyan]}%n${reset_color}@${fg[cyan]}%m${reset_color}:${fg[green]}%d${reset_color} $"' > ${script}

echo '# zsh-completions setting' > ${script}
echo 'if [ -e /usr/local/share/zsh-completions ]; then' > ${script}
echo '    fpath=(/usr/local/share/zsh-completions $fpath)' > ${script}
echo 'fi' > ${script}
echo 'autoload -U compinit && compinit -u' > ${script}

echo '# alias' > ${script}
echo 'alias root="root -l"' > ${script}
echo 'alias ls="ls -G"' > ${script}
echo 'alias ssh="ssh -2 -C -Y"' > ${script}

chmod 744 ${SCRIPT}

cd -

echo "if [ -f ${HOME}/${DIR}/zshrc.sh ]; then" >> ${HOME}/.zshenv
echo "  source ${HOME}/${DIR}/zshrc.sh" >> ${HOME}/.zshenv
echo "fi" >> ${HOME}/.zshenv
