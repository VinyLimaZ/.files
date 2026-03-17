" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
" By skwp
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Don't allow any default key-mappings.
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" vim reload
nmap <silent> <Leader>vr :so ~/.config/nvim/init.vim<CR>

" Remapping CtrlP
let g:ctrlp_map = ' t'
nnoremap <silent> <Leader>t :CtrlP<CR>
nnoremap <silent> <c-p> :CtrlP<CR>
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>

" zoom a vim pane, <C-w> = to re-balance
nnoremap <Leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <Leader>= :wincmd =<cr>

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
