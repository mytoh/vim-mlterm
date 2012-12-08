
let s:save_cpo = &cpo
set cpo&vim

function! mlterm#color#define_syntax()
  call s:define_keywords()
  call s:define_highlights()
endfunction

function! s:define_keywords()
syntax keyword mltermColorName
      \ black red green yellow blue magenta cyan white
      \ hl_black hl_red hl_green hl_yellow
      \ hl_blue hl_magenta hl_cyan hl_white

endfunction

function! s:define_highlights()
  hi def link mltermColorName      Keyword
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
