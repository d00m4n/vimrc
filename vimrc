" config based on https://stsewd.dev/es/posts/neovim-installation-configuration/ and inspired by https://www.youtube.com/channel/UC4FHiPgS1KXkUMx3dxBUtPg, thx
" ----------------------------| Sets |----------------------------------
set number " Muestra los números de las líneas.
set title " Muestra el nombre del fichero.
set mouse=a "Habilita el uso del ratón.
set numberwidth=1 "Especifica el sangrado de los números de línias.
set clipboard=unnamed "habilita el portapapeles dentro de vim.
set showcmd "Muestra los comandos ejecutados.
set ruler "Muestra la posición del cursor (vim).
set encoding=utf-8
set showmatch "Muestra la clave que cierra
set sw=2 "Modifica el tabulador por dos espacios.
set relativenumber "Agrega la posicion relativa de las lineas.
set laststatus=2 "Muestra la barra de estado(vim).
set ignorecase "Ignora mayúsculas al hacer una búsqueda.
set smartcase "No ignora mayúsculas si la palabra a buscar las contiene.
set spelllang=en,es "Usa el corrector inglés y español.
"set termguicolors "Activa t:qrue colors en la terminal.

" ----------------------------| other |----------------------------------
" 

syntax enable "habilita el resaltado de código.

" --------------------------| plugins |------------------------------

call plug#begin('~/.vim/plugged')
" --- Tema.
Plug 'morhetz/gruvbox'
" --- Navegador de ficheros
Plug 'scrooloose/nerdtree' 
" --- Buscador 
Plug 'easymotion/vim-easymotion' 

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" Cierra Nerdtree al abrir un fichero.
let NERDTreeQuitOnOpen=1

" ----------------------------| key maps |------------------------------
" Mapping leader en el espacio.
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
