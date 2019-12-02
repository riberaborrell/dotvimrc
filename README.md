# dotvimrc

## Installation
1. Install vim
```
# os x
sudo brew update
sudo brew install vim

# ubuntu
sudo apt-get update
sudo apt-get install vim 
```
2. Check vim version and everything that vim has compiled
```
vim --version # latest =  8.1
```
3. Check python support
```
vim   
:echo has('python3')
```
4. Install Vundle (https://github.com/VundleVim/Vundle.vim)
```
# clone project
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

5. get .vimrc and .gvimrc files
```
# clone project
cd ~/.vim
git clone https://github.com/eborrell/dotvimrc.git

# create symlinks
rm ~/.vimrc
rm ~/.gvimrc
ln -s ~/.vim/dotvimrc/vimrc ~/.vimrc
ln -s ~/.vim/dotvimrc/gvimrc ~/.gvimrc

# fetch submodules
git submodule init
git submodule update
```

6. Install plugins
```
vim
:PluginInstall
```
