#!/usr/bin/env bash

echo ".files..."

cd $HOME

echo "Linking dotfiles..."
ln -fs .files/.vimrc
ln -fs .files/.zshrc
