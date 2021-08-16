# create config-vim folder if no exists
mkdir -p ~/.config/nvim
# create link for init.vim
sudo ln -f init.vim ~/.config/nvim/init.vim
# create link for vimrc
sudo ln -f vim.rc  ~/.vimrc
# download plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Auto install plugins and themes.
nvim +PlugInstall +qall

# Install kite
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"
