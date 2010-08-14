" Preamble
set nocompatible
filetype on
filetype indent on
filetype plugin on

" Backup & Tempory Files
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp

" Change the Statusbar
set laststatus=2
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totl=%L%)\ \ \[%P]

" General Display Options
syntax on
set number
set cursorline
set autoindent!
set lbr " bad man line wraps
set textwidth=80

" Want different display settings
if has("gui_running")
  colorscheme desert
  set guifont=Inconsolata\ 12
  set showtabline=1
  set guioptions=egrLi
else
  " ...
endif

" Soft tabs, the best tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Small visual stuff
set showmatch
set mat=5
set lcs=tab:>-,trail:~,extends:<,precedes:<,eol:$
set backspace=indent,start
set virtualedit=all
set ignorecase

" Toggle options.
function! MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
  exec 'inoremap '.a:key." \<C-0>".cmd
endfunction

command! -nargs=+ MapToggle call MapToggle(<f-args>)
MapToggle <F5> list
