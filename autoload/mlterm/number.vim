

let s:save_cpo = &cpo
set cpo&vim

function! mlterm#number#define_syntax()
  call s:define_keywords()
  call s:define_highlights()
endfunction

function! s:define_keywords()
  syntax match mltermNumber  "\v\=(\s*)\zs(\d+)"
endfunction

function! s:define_highlights()
  hi def link mltermNumber        Number
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
