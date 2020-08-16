let mapleader =" "

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'farmergreg/vim-lastplace'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set bg=light
set go=a
set mouse=a
nnoremap <space><space> :noh<return><esc>
" set nohlsearch
set clipboard+=unnamedplus

" Some basics:
        nnoremap c "_c
        set nocompatible
        filetype plugin on
        syntax on
        set encoding=utf-8
        set number relativenumber
" Enable autocompletion:
        set wildmode=longest,list,full
" Disables automatic commenting on newline:
        autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
        map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
        set splitbelow splitright

" Replace all is aliased to S.
        nnoremap S :%s//g<Left><Left>
" Save file as sudo on files that require root permission
        cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" Automatically deletes all trailing whitespace and newlines at end of file on save.
        autocmd BufWritePre * %s/\s\+$//e
        autocmd BufWritepre * %s/\n\+\%$//e
" Run xrdb whenever Xdefaults or Xresources are updated.
        autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
