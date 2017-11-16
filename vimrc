set nocompatible
so ~/.vim/plugins.vim
filetype on

syntax enable
set backspace=indent,eol,start
let mapleader=','
set number
set ts=4 sts=-1 sw=0 et
"set ts=4 sts=4 sw=4 et ai  "for python
set laststatus=2
set statusline=%f
set mouse=a

let anyfold_activate=1
let anyfold_fold_comments=1
set foldlevel=20

let g:snake_rows=37
let g:snake_update=1


if ($TERM == 'xterm-256color' || $TERM == 'screen-256color')
    map <Esc>OP <F1>
    map <Esc>OQ <F2>
    map <Esc>OR <F3>
    map <Esc>OS <F4>
    map <Esc>[16~ <F5>
    map <Esc>[17~ <F6>
    map <Esc>[18~ <F7>
    map <Esc>[19~ <F8>
    map <Esc>[20~ <F9>
    map <Esc>[21~ <F10>
    map <Esc>[23~ <F11>
    map <Esc>[24~ <F12>
endif


"----------------- Visuals -----------------"
colorscheme lucario


"--------------- Mappings ------------------"
"open this page by typing
nnoremap <Leader>ev :tabedit $MYVIMRC<cr>	

"basic movements
inoremap ∆ <left>
inoremap ˚ <down>
inoremap ¬ <up>
inoremap … <right>

nnoremap ∆ h
nnoremap ˚ j
nnoremap ¬ k
nnoremap … l
nnoremap Ô <S-Left>
nnoremap Ú <S-Right>
 
vnoremap ∆ h
vnoremap ˚ j
vnoremap ¬ k
vnoremap … l
vnoremap Ô <S-Left>
vnoremap Ú <S-Right>

"commenting commands
vmap <C-_> <leader>c<space>
nmap <C-_> <leader>c<space>
imap <C-_> <Esc><leader>c<space>i


"Copy and paste commands"
vnoremap <C-c> "*yi
vnoremap <C-x> "*c
vnoremap <C-v> <Esc>"*p
 
nnoremap <C-c> V"*yi
nnoremap <C-x> V"*c
nnoremap <C-v> "*pa

inoremap <C-c> <Esc>V"*yi
inoremap <C-x> <Esc>V"*c
inoremap <C-v> <Esc>"*pa

"quick save, quit..."
inoremap qq <Esc>:q<cr>
inoremap <Leader>. <Esc>:w<cr>i<right>
 
nnoremap qq <Esc>:q<cr>
nnoremap <S-q> :q!<cr>
nnoremap <Leader>. :w<cr>

vnoremap <Leader>. <Esc>:w<cr>

"tab blocks"
nnoremap <S-Tab> <<
nnoremap <Tab> >>

inoremap <S-Tab> <C-d>

"Undo-redo"
nnoremap <C-z> u
nnoremap <C-y> <C-r>
nnoremap <F1> u
nnoremap <F2> <C-r>

inoremap <C-z> <Esc>ui
inoremap <C-y> <Esc><C-r>i
inoremap <F1> <Esc>ui
inoremap <F2> <Esc><C-r>i


"add or remove lines"
nnoremap ++ <Esc>o
nnoremap <Enter> o 
inoremap __ <Esc>ddi
 
"select text"
inoremap <S-Right> <Esc><Right>v
inoremap <S-Left> <Esc><Right>v
inoremap <S-Up> <Esc>V
inoremap <S-Down> <Esc>V
inoremap  <Esc>V
inoremap Ò <Esc>V
inoremap Ô <Esc><Right>v
inoremap Ú <Esc><Right>v

nnoremap <S-Up> <Esc>V
nnoremap <S-Down> <Esc>V
nnoremap  <Esc>V 
nnoremap Ò <Esc>V

vnoremap <Enter> "*yi<Esc>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>

"visual mode basic commands"
vnoremap i <Esc>i
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv
vnoremap <Bs> di

"column highlight"
nnoremap <Esc><Esc>[D <C-V><left>
nnoremap <Esc><Esc>[C <C-V><right>
inoremap <Esc><Esc>[D <Esc><C-V><left>
inoremap <Esc><Esc>[C <Esc><C-V><right>

"searching"
set nohlsearch
let g:incsearch#auto_nohlsearch =1 
map /  <Plug>(incsearch-forward)
nmap <C-f> <Plug>(incsearch-forward)
imap <C-f> <Esc><Plug>(incsearch-forward)
vmap <C-f> <Esc><Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
inoremap ≤ <Esc>#i
inoremap ≥ <Esc>*i
vnoremap ≤ <Esc># 
vnoremap ≥ <Esc>*
nnoremap ≥ *
vnoremap ≤ # 
 


 



"folding"
nnoremap ˙ za
vnoremap ˙ za
inoremap ˙ <Esc>za


augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"--------------- VIM Tips and Tricks ----------------"
"- 'zz' centers cursor in window
"- 'vi<char>' will grab anything inside a character
"- 'va<char>' same but grabs char
"- 'di/da<char>' same but deletes
"- 'dd' deletes line
"- 'v' visual mode visually grabs line
                


