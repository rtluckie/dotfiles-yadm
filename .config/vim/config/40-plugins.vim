if empty(glob("$XDG_CONFIG_HOME/vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo $XDG_CONFIG_HOME/vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

call plug#begin('$XDG_CONFIG_HOME/vim/plugged')

"█▓▒░ appearance
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" colors
" Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'


"█▓▒░ git
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim', { 'on': 'GV' }
Plug 'tpope/vim-fugitive'

"█▓▒░ programming
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

"█▓▒░ language support 
Plug 'avakhov/vim-yaml', { 'for': ['yaml'] }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': ['go'] }
Plug 'google/vim-jsonnet', { 'for': ['jsonnet'] }
Plug 'hashivim/vim-terraform', { 'for': ['terraform'] }

"█▓▒░ utils
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }
Plug 'matze/vim-move'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/tpope-vim-abolish'
Plug 'tpope/vim-eunuch'


"█▓▒░ tmux
Plug 'christoomey/vim-tmux-navigator'

"█▓▒░ writing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }

"█▓▒░ styling
Plug 'chrisbra/colorizer'
Plug 'chrisbra/unicode.vim'
Plug 'powerman/vim-plugin-AnsiEsc'


call plug#end()