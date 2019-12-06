#
```
cd $HOME
git clone https://github.com/ssiyad/.vim
cd .vim
git submodule update --init --recursive
ln -s $HOME/.vim/vimrc $HOME/.vimrc
cd bundle/YouCompleteMe
python3 install.py --clang-completer --rust-completer
```
