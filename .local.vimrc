" call the current script
"map <Leader>rr :call CleanShell("make clean && make FILE=".@% ." && make all")<CR>
map <Leader>rr :call CleanShell("make all")<CR>


autocmd FileType haskell map <Leader>t :GhciRange<CR>
autocmd FileType haskell map <Leader>f :GhciFile<CR>

