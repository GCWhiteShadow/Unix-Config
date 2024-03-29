echo "***** Installing some necessary program, password required *****"
sudo apt-get update
sudo apt-get install tmux git vim --yes

echo "Setting up tmux"
cp -R Unix-Config/.tmux ~/
ln -s -f .tmux/.tmux.conf
cp Unix-Config/.tmux.conf.local ~/
echo ""


echo "Setting up Vim"
mkdir -p ~/.vim/bundle
cp -R Unix-Config/Vundle.vim ~/.vim/bundle/Vundle.vim
cp Unix-Config/.vimrc ~/
vim +PluginInstall +qall
echo ""
echo "All finished. Enjoy your new fresh system :)"

