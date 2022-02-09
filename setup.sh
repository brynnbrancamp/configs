# .zshrc
ln -sf ~/configs/.zshrc ~/.zshrc

# user dirs
rm ~/.config/user-dirs.dirs
ln -sf ~/configs/user-dirs.dirs ~/.config/user-dirs.dirs

# kitty
mkdir -p ~/.config/kitty/
ln -sf ~/configs/kitty.conf ~/.config/kitty/kitty.conf

# nvim
mkdir -p ~/.config/nvim
ln -sf ~/configs/init.vim ~/.config/nvim/init.vim
