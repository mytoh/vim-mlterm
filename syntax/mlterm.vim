" Vim syntax file
" Language:	generic configure file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2005 Jun 20

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	mltermTodo	contained TODO FIXME XXX
" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match	mltermComment	"\v^#.*" contains=mltermTodo
syn match	mltermComment	"\v^\s*#.*"ms=s+1 contains=mltermTodo
syn region	mltermString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	mltermString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

syntax keyword mltermBoolean true false none


call mlterm#define_syntax()

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link mltermComment	Comment
hi def link mltermTodo          Todo
hi def link mltermString	String
hi def link mltermBoolean       Boolean


let b:current_syntax = "mlterm"

" vim: ts=8 sw=2
