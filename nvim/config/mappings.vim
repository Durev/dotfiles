" Key mappings

" ======= General Mappings =======
" Leader key
let mapleader = "\<Space>"

" Always jump to first non blank character
nmap 0 ^

" Write the file with Ctrl-s
nmap <C-s> :w<cr>
imap <C-s> <esc>:w<cr>

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

" Rapid editing of init.vim
nmap <leader>vr :tabnew $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" Ain't nobody got time for Esc
imap jk <esc>
imap kj <esc>

" End / Beginning of line in insert mode
imap ¬ <esc>$a
imap Ì <esc>0i

" Easy quit
nmap Q :q<cr>

" New split
nmap vv <C-w>v
nmap ss <C-w>s

" Jump to split
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Switch tab
nmap <leader><right> gt
nmap <leader><left> gT

" Ruby motion
nmap <leader>d [m
nmap <leader>e ]M
nmap <leader>E [M
nmap <leader>D ]m

" ======= Plugins =======
" --- fzf ---
nnoremap <C-p> :Files<cr>
nnoremap <leader>ff :Ag<cr>

" --- RSpec.vim - save and run specs ---
map <Leader>t :w<cr> :call RunCurrentSpecFile()<cr>
map <Leader>s :w<cr> :call RunNearestSpec()<cr>
map <Leader>l :w<cr> :call RunLastSpec()<cr>

" --- gitgutter ---
nmap <leader>hn <Plug>(GitGutterNextHunk)
nmap <leader>hl <Plug>(GitGutterPrevHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)

" --- NERDTree ---
nnoremap <leader>ntt :NERDTreeToggle<CR>
nnoremap <silent><leader>ntf :NERDTreeFind<CR>
