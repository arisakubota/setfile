#!/bin/bash

SCRIPT=".vimrc"

if [ ! -f ${HOME}/${SCRIPT} ]; then
	touch ${HOME}/${SCRIPT}
fi

cd ${HOME}

echo "set backspace=indent,eol,start" > ${SCRIPT}
echo "set number                    " >> ${SCRIPT}
echo "colorscheme desert            " >> ${SCRIPT}
echo "syntax on                     " >> ${SCRIPT}
echo "set smartindent               " >> ${SCRIPT}
echo "set autoindent                " >> ${SCRIPT}
echo "set showmatch                 " >> ${SCRIPT}
echo "set tabstop=2                 " >> ${SCRIPT}
echo "set shiftwidth=2              " >> ${SCRIPT}
