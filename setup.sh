echo "***** Installing some necessary program, password required *****"
sudo apt-get update
sudo apt-get install tmux git vim

echo "Setting up tmux"
cp -R Unix-Config/.tmux ~/
ln -s -f .tmux/.tmux.conf
echo ""


echo "Setting up Vim"
cp -R Unix-Config/Vundle.vim ~/
echo "Please execute VundleInstall under vim"

