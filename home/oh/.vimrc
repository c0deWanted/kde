syntax on
set number relativenumber
set nu rnu
:highlight LineNr ctermfg=grey
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
:set cursorline
:hi CursorLine   cterm=NONE ctermbg=59 ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
