#!/bin/bash

CUR_DIR=$(pwd)

# Back up existing stuff!!
# TODO: Check relevant subdirectories too
BKUPS=${HOME}/.dotfiles_backups
mkdir -p ${BKUPS}
for f in .bashrc .bash_profile; do
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

