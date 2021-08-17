#!/bin/bash

CUR_DIR=$(pwd)

# Bash
mkdir -p ${HOME}/.bash/history
ln -s ${CUR_DIR}/bash/bashrc ${HOME}/.bashrc
ln -s ${CUR_DIR}/bash/bash_profile ${HOME}/.bash_profile
ln -s ${CUR_DIR}/bash/prompt ${HOME}/.bash/prompt

# Vim
mkdir -p ${HOME}/.vim/conf
ln -s ${CUR_DIR}/vim/vimrc ${HOME}/.vimrc
ln -s ${CUR_DIR}/vim/conf/base.vim ${HOME}/.vim/conf/base.vim
ln -s ${CUR_DIR}/vim/conf/colors.vim ${HOME}/.vim/conf/colors.vim
ln -s ${CUR_DIR}/vim/conf/nerdtree.vim ${HOME}/.vim/conf/nerdtree.vim
ln -s ${CUR_DIR}/vim/conf/vundle.vim ${HOME}/.vim/conf/vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# tmux
mkdir -p ${HOME}/.tmux/conf
ln -s ${CUR_DIR}/tmux/tmux.conf ${HOME}/.tmux.conf
ln -s ${CUR_DIR}/tmux/conf/base.conf ${HOME}/.tmux/conf/base.conf
ln -s ${CUR_DIR}/tmux/conf/screen-bindings.conf ${HOME}/.tmux/conf/screen-bindings.conf
ln -s ${CUR_DIR}/tmux/conf/tpm.conf ${HOME}/.tmux/conf/tpm.conf

# TODO: ack

ln -s ${CUR_DIR}/curlrc ${HOME}/.curlrc

ln -s ${CUR_DIR}/gitconfig ${HOME}/.gitconfig

ln -s ${CUR_DIR}/rsync-excludes ${HOME}/.rsync-excludes

