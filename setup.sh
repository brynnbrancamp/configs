# development tools
sudo dnf update
sudo dnf groupinstall -y "Development Tools"

# google chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable

# user dirs
rm ~/.config/user-dirs.dirs
ln -sf ~/configs/user-dirs.dirs ~/.config/user-dirs.dirs
mv ~/Desktop ~/desktop
mv ~/Documents ~/documents
mv ~/Downloads ~/downloads
mv ~/Music ~/music
mv ~/Pictures ~/pictures
mv ~/Public ~/public
mv ~/Templates ~/templates
mv ~/Videos ~/videos

# fonts
sudo dnf install -y fira-code-fonts

# kitty
sudo dnf install -y kitty
mkdir -p ~/.config/kitty/
ln -sf ~/configs/kitty.conf ~/.config/kitty/kitty.conf

# rust analyzer
mkdir -p ~/.local/bin
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

# nvim
sudo dnf install -y neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config/nvim
ln -sf ~/configs/init.vim ~/.config/nvim/init.vim

# .zshrc
sudo dnf install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo dnf install -y util-linux-user
chsh -s $(which zsh)
ln -sf ~/configs/.zshrc ~/.zshrc
