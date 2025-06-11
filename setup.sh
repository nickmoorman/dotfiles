#!/bin/bash

CUR_DIR=$(pwd)

# Back up existing stuff!!
# TODO: Check relevant subdirectories too
BKUPS=${HOME}/.dotfiles_backups
mkdir ${BKUPS}
for f in .bashrc .bash_profile .vimrc .tmux.conf .curlrc .gitconfig .rsync-excludes; do
    if [[ -e ${HOME}/${f} ]]; then
        echo "Moving ${HOME}/${f} to ${BKUPS}..."
        mv ${HOME}/${f} ${BKUPS}/${f}
    fi
done

# Bash
echo "Setting up Bash configs..."
mkdir -p ${HOME}/.bash/history
ln -s ${CUR_DIR}/bash/bashrc ${HOME}/.bashrc
ln -s ${CUR_DIR}/bash/bash_profile ${HOME}/.bash_profile
ln -s ${CUR_DIR}/bash/prompt ${HOME}/.bash/prompt

# Vim
echo "Setting up Vim configs..."
mkdir -p ${HOME}/.vim/conf
ln -s ${CUR_DIR}/vim/vimrc ${HOME}/.vimrc
ln -s ${CUR_DIR}/vim/conf/base.vim ${HOME}/.vim/conf/base.vim
ln -s ${CUR_DIR}/vim/conf/colors.vim ${HOME}/.vim/conf/colors.vim
ln -s ${CUR_DIR}/vim/conf/nerdtree.vim ${HOME}/.vim/conf/nerdtree.vim
ln -s ${CUR_DIR}/vim/conf/vundle.vim ${HOME}/.vim/conf/vundle.vim
echo "Cloning Vundle and installing plugins..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# tmux
echo "Setting up tmux configs..."
mkdir -p ${HOME}/.tmux/conf
ln -s ${CUR_DIR}/tmux/tmux.conf ${HOME}/.tmux.conf
ln -s ${CUR_DIR}/tmux/conf/base.conf ${HOME}/.tmux/conf/base.conf
ln -s ${CUR_DIR}/tmux/conf/screen-bindings.conf ${HOME}/.tmux/conf/screen-bindings.conf
ln -s ${CUR_DIR}/tmux/conf/tpm.conf ${HOME}/.tmux/conf/tpm.conf
# See: https://superuser.com/a/454827
#brew install reattach-to-user-namespace
echo "Cloning tmux-plugins..."
# See: https://github.com/tmux-plugins/tpm/issues/67#issuecomment-464260747
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# TODO: ack

echo "Symlinking .curlrc, .gitconfig, and .rsync-excludes..."

ln -s ${CUR_DIR}/curlrc ${HOME}/.curlrc

ln -s ${CUR_DIR}/gitconfig ${HOME}/.gitconfig

ln -s ${CUR_DIR}/rsync-excludes ${HOME}/.rsync-excludes

