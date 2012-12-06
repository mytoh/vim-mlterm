
let s:save_cpo = &cpo
set cpo&vim

function! mlterm#define_syntax()
call mlterm#encoding#define_syntax()
call mlterm#option#define_syntax()
call mlterm#number#define_syntax()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
