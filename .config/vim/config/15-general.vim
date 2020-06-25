"█▓▒░ use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set encoding=utf8
if &compatible | set nocompatible | endif " Avoid side effects if `nocp` already set

"█▓▒░ security
set modelines=0

"█▓▒░ hide buffers, not close them
set hidden

"█▓▒░ maintain undo history between sessions
let undodir_path=expand("~/.cache/vim/undo")
if !isdirectory(undodir_path)
	call mkdir(undodir_path, 'p', 0700)
endif
set undodir=~/.cache/vim/undo
set undofile

"no swap
set noswapfile

"█▓▒░ fuzzy find
set path+=**
"█▓▒░ lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
"█▓▒░ ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

"█▓▒░ case insensitive search
set ignorecase
set smartcase
set infercase

"█▓▒░ the /g flag on :s substitutions by default
"set gdefault <<--- need to break this habit

"█▓▒░ make backspace behave in a sane manner
set backspace=indent,eol,start

"█▓▒░ searching
set hlsearch
set incsearch
if has("nvim")
  set inccommand=split
endif

"█▓▒░ use indents of 4 spaces
set shiftwidth=4

"█▓▒░ tabs are tabs
set noexpandtab

"█▓▒░ an indentation every four columns
set tabstop=4

"█▓▒░ let backspace delete indent
set softtabstop=4

"█▓▒░ enable auto indentation
set autoindent

"█▓▒░ remove trailing whitespaces and ^M chars
augroup ws
  au!
  autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end

"█▓▒░ set leader key to comma
let mapleader=","

"█▓▒░ coffee pasta
set clipboard^=unnamedplus

"█▓▒░ Remember position of last edit and return on reopen
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif