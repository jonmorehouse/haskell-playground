" call the current script
"map <Leader>rr :call CleanShell("make clean && make FILE=".@% ." && make all")<CR>
map <Leader>rr :call CleanShell("make all")<CR>

