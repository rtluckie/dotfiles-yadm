"           ██
"          ░░
"  ██    ██ ██ ██████████  ██████  █████
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░
"
"  ▓▓▓▓▓▓▓▓▓▓
" ░▓ author ▓ xero <x@xero.nu>
" ░▓ code   ▓ http://code.xero.nu/dotfiles
" ░▓ mirror ▓ http://git.io/.files
" ░▓▓▓▓▓▓▓▓▓▓
" ░░░░░░░░░░
"

if empty(glob("$XDG_CONFIG_HOME/vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo $XDG_CONFIG_HOME/vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

call plug#begin('$XDG_CONFIG_HOME/vim/plugged')
" colors
Plug 'xero/sourcerer.vim'
Plug 'xero/blaquemagick.vim'
Plug 'xero/vim-noctu'
Plug 'xero/nord-vim-mod'

" programming
Plug 'ajh17/VimCompletesMe'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" stylize
Plug 'xero/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/colorizer'
Plug 'chrisbra/unicode.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" features
Plug 'rking/ag.vim'
Plug 'matze/vim-move'
Plug 'isa/vim-matchit'
Plug 'godlygeek/tabular'
Plug 'tpope/tpope-vim-abolish'
Plug 'xero/securemodelines'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }
Plug 'junegunn/gv.vim', { 'on': 'GV' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" multiplexer integration
Plug 'roxma/vim-tmux-clipboard'
Plug 'christoomey/vim-tmux-navigator'
Plug 'melonmanchan/vim-tmux-resizer'

call plug#end()