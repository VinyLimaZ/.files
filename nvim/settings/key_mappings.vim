" Switch between the last two files
nnoremap <Leader><Leader> <c-^>

"" vim-rspec mappings
"nnoremap <Leader>rs :call RunCurrentSpecFile()<CR>
"nnoremap <Leader>rn :call RunNearestSpec()<CR>
"nnoremap <Leader>rl :call RunLastSpec()<CR>
"nnoremap <Leader>ra :call RunAllSpecs()<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" create <%= foo %> erb tags using Ctrl-k in edit mode
imap <silent> <C-K> <%=  %><Esc>2hi
" create <%= foo %> erb tags using Ctrl-j in edit mode
imap <silent> <C-J> <%  %><Esc>2hi

" Re-enable tmux_navigator.vim default bindings, minus <c-\>.
" <c-\> conflicts with NERDTree "current file".

" Type <space>hl to toggle highlighting on/off, and show current value.
"noremap <Leader>hl :set hlsearch! hlsearch?<CR>

"" Tabs
"nnoremap <S-Tab> gt
"nnoremap <silent> <S-t> :tabnew<CR>

" Rubocop
map <Leader>ru :call VtrSendCommand('rubocop')<CR>
map <Leader>rfu :call VtrSendCommand('rubocop ' . expand("%"))<CR>

" Flog
map <Leader>fl :call VtrSendCommand('flog ' . expand("%"))<CR>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Index ctags from any project, including those outside Rails
"map <Leader>ct :!ctags -R .<CR>

"grep the current word using K (mnemonic Kurrent)
"nnoremap <silent> K :Ag <cword><CR>

" Ruby refactory
" key_mappings.vim
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
"nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
