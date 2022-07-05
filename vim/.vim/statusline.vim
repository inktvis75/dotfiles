function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

set laststatus=2
set statusline=
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly?

augroup statusline
        autocmd!
	autocmd VimEnter,ColorScheme * hi User1 guifg=#ffdad8  guibg=#880c0e
	autocmd VimEnter,ColorScheme * hi User2 guifg=#000000  guibg=#F4905C
	autocmd VimEnter,ColorScheme * hi User3 guifg=#292b00  guibg=#f4f597
	autocmd VimEnter,ColorScheme * hi User4 guifg=#112605  guibg=#aefe7B
	autocmd VimEnter,ColorScheme * hi User5 guifg=#051d00  guibg=#7dcc7d
	autocmd VimEnter,ColorScheme * hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
	autocmd VimEnter,ColorScheme * hi User8 guifg=#ffffff  guibg=#5b7fbb
	autocmd VimEnter,ColorScheme * hi User9 guifg=#ffffff  guibg=#810085
	autocmd VimEnter,ColorScheme * hi User0 guifg=#ffffff  guibg=#094afe
augroup END


