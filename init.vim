" Basic config 
set encoding=UTF-8
let mapleader = ","
let localmapleader = "\<Space>"

if &compatible
    set nocompatible
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set number 
set background=dark
set relativenumber 
set history=5000
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set laststatus=2
set wrap

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

let g:make = 'gmake'
if exists('make')
      let g:make = 'make'
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
let g:vim_bootstrap_langs = "javascript,python,ruby"
let g:vim_bootstrap_editor = "nvim"		

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))
" Plug 'Shougo/deoplete.nvim',{'do': ':UpdateRemotePlugins'}
" Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/dein.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()


filetype plugin indent on
let g:deoplete#enable_at_startup = 1
let NERDTreeShowHidden=1
nnoremap <leader>f :NERDTreeToggle<Cr>
color molokai 
syntax enable

hi LineNr ctermfg=DarkGray ctermbg=none
hi Normal ctermfg=DarkGray ctermbg=none
