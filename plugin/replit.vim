" replit: REPL in tmux
" based on tslime.vim

if exists("g:replit_loaded")
  finish
endif

let g:replit_loaded = 1

function! Send_to_Tmux_Pane(text)
	let target = system("tmux list-panes | grep -v active | cut -d ':' -f 1 | head -1")
	let text = substitute(a:text, "'", "'\\\\''", 'g')
	let text = substitute(text, "\t", "   ", 'g')
	call system("tmux set-buffer '" . text . "'" )
	call system("tmux paste-buffer -t " . target)
endfunction

vmap <silent> <CR> "ry:call Send_to_Tmux_Pane(@r)<CR>
nmap <silent> <CR> V<CR>
nmap <silent> <leader><CR> ggVG<CR>

