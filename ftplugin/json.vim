"uncomment to enable folding of `{...}` and `[...]` blocks
setlocal foldmethod=syntax

"conceal by default
if !exists("g:vim_json_syntax_conceal")
	let g:vim_json_syntax_conceal = 1
end

"set concealcursor blank by default
"this should turn off the concealing in the current line (where the cursor is at),
"on all modes (normal, visual, insert)
if !exists("g:vim_json_syntax_concealcursor")
	let g:vim_json_syntax_concealcursor = ""
end

if has('conceal')
	if (g:vim_json_syntax_conceal == 1)
		"level 2 means concealed text gets completely hidden unless a
		"replacement is defined (none is defined by us)
		setlocal conceallevel=2
		let &l:concealcursor = g:vim_json_syntax_concealcursor
	else
		"level 0 means text is shown normally = no concealing
		setlocal conceallevel=0
	endif
	"maybe g:vim_json_syntax_conceal could be settable to 0,1,2 to map
	"directly to vim's conceallevels? unsure if anyone cares
endif
