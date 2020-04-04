"" Pathogen

execute pathogen#infect()

"" jellybeans colorscheme from pathogen

colorscheme NeoSolarized
set background=dark

"" 80 Columns

"" highlight ColorColumn ctermbg=238
"" let &colorcolumn=join(range(81,999),",")

"" Python

syntax on
filetype indent plugin on

au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

set modeline
set tabstop=8 expandtab shiftwidth=4 softtabstop=4

"" Search

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" " mapping of <C-L> below)
set hlsearch

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"" Stuf

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" don't close folds on file load
set nofoldenable
