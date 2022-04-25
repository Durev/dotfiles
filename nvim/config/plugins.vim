" Plugins settings

" --- fzf ---
" Ignore filenames in Ag matching
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

" --- test.vim---
let test#strategy = "dispatch"

" --- nvim-tree ---
" Close the tab if nvim-tree is the last window remaining
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

" --- delimitMate ---
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" --- startify ---
let g:startify_lists = [
    \{ 'type': 'dir',       'header': ['   MRU '. getcwd()] },
    \{ 'type': 'sessions',  'header': ['   Sessions']       },
    \{ 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\]

let g:startify_ascii = [
    \ "             .:                :.                                                                                                                          ",
    \ "           .---:.              :--.                                                                                                                        ",
    \ "         .-----::.             :===-.                                                                                                                      ",
    \ "       .----------:            :=====-.                                                                                 :****:                             ",
    \ "     .::-----------:           :=======-.                                                                               :****:                             ",
    \ "     ::::------------.         -========:                                                                                                                  ",
    \ "     :::::------------:        -========:          -.  .:--=-:.         :-----:.         .:--=--:    =+++=        .++++..++++.  -+++..-+***+-  .-++***+=:  ",
    \ "     ::::::------------:       -========:          *-:=-..  .-+=     .=+-.    .-=:     -+-:.  .:-+=.  +***-       =***- :****:  =***+*++=+***+-**+==+****= ",
    \ "     :-------------------.     -========:          *+:         +=   .+-          +:  .+=          =*: .****:     -***=  :****:  =***+:    .+****:    :****:",
    \ "     :--------..----------:    -========:          *=          =*   +=           :+  ++            +*. :***+.   :***+   :****:  =***+      =***+      +***-",
    \ "     :--------.  -----------   -========:          *=          -*  :*+============= .*-            -*:  =***=   +**+.   :****:  =***+      =***+      +***-",
    \ "     :--------.   :----------. -========:          *=          -*  .*-              .*-            -*:   =***: =***:    :****:  =***+      =***+      +***-",
    \ "     :--------.    .----------:-========:          *=          -*   ++               ++            +*.    +**+:***-     :****:  =***+      =***+      +***-",
    \ "     :--------.      ----------=========:          *=          -*   .+=              :*-          -*:     :******=      :****:  =***+      =***+      +***-",
    \ "     :--------.       :--------=========-          *=          -*    .=+-..   .:-=:   .==:.    .:+=:       :****+       :****:  =***+      =***+      +***-",
    \ "     :--------.        .-------====+++++-          -:          :-       :--==--:.        :--==--:           ::::.       .::::.  :::::      :::::      ::::.",
    \ "     :--------.         .------=====++++-                                                                                                                  ",
    \ "      :-------.           :----======+=:                                                                                                                   ",
    \ "        :-----.            .---======:                                                                                                                     ",
    \ "          :-==.             .--====:                                                                                                                       ",
    \ "            :-.               -==:  ",
 \]

let g:startify_custom_header = g:startify_ascii

let g:startify_bookmarks = [
    \{ 'd': '$DOTFILES' },
    \{ 's': '$SSERVER' },
    \{ 'l': '$SETL' },
\]

" ======= Color scheme & Statusline =======
if (has('termguicolors'))
    set termguicolors
endif

" default lightline colorscheme provide greater contrast - Stay minimal for now
let g:lightline = {
    \ 'colorscheme': 'material_vim',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'filepath', 'gitbranch', 'readonly', 'modified' ] ]
    \ },
    \ 'component': {
    \   'lineinfo': '%3l:%-2v%<',
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead',
    \   'filepath': 'LightlineTruncatedFileName'
    \ },
    \ }

function! LightlineTruncatedFileName()
let l:filePath = expand('%')
    if winwidth(0) > 70
        return l:filePath
    else
        return pathshorten(l:filePath)
    endif
endfunction

" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

let g:material_terminal_italics = 1
let g:material_theme_style = 'default'

colorscheme material

" cursor line highlight
highlight CursorLine guibg=#34434a

" visual mode selection colour
highlight Visual guifg=none guibg=#0C4A6E gui=none

" gitsigns colors
highlight GitSignsDelete guifg=#E74C3C
highlight GitSignsChange guifg=#FACC15
highlight GitSignsAdd guifg=#2ECC71
highlight clear SignColumn
