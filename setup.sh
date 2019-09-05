#!/bin/bash

# TODO: Don't override anything!

CUR_DIR=$(pwd)

mkdir -p ${HOME}/.bash/history
mkdir -p ${HOME}/.vim/conf

ln -s ${CUR_DIR}/bash/bashrc ${HOME}/.bashrc
ln -s ${CUR_DIR}/bash/bash_profile ${HOME}/.bash_profile
ln -s ${CUR_DIR}/bash/prompt ${HOME}/.bash/prompt

# TODO: ack

ln -s ${CUR_DIR}/curlrc ${HOME}/.curlrc

ln -s ${CUR_DIR}/gitconfig ${HOME}/.gitconfig

ln -s ${CUR_DIR}/rsync-excludes ${HOME}/.rsync-excludes

# TODO: tmux

ln -s ${CUR_DIR}/vim/vimrc ${HOME}/.vimrc
ln -s ${CUR_DIR}/vim/conf/base.vim ${HOME}/.vim/conf/base.vim
ln -s ${CUR_DIR}/vim/conf/colors.vim ${HOME}/.vim/conf/colors.vim
ln -s ${CUR_DIR}/vim/conf/nerdtree.vim ${HOME}/.vim/conf/nerdtree.vim
ln -s ${CUR_DIR}/vim/conf/vundle.vim ${HOME}/.vim/conf/vundle.vim

