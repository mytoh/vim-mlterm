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
syn match	mltermComment	"\v\s#.*"ms=s+1 contains=mltermTodo
syn region	mltermString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	mltermString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline


syntax keyword mltermOption
      \ ENCODING allow_osc52 alpha app_name auto_restart bd_color
      \ bel_mode bg_color bidi_mode big5_buggy blink_cursor borderless
      \ brightness button3_behavior cipher_list click_interval
      \ col_size_of_width_a conf_menu_path_3 contrast cursor_bg_color
      \ cursor_fg_color default_server display exit_backscroll_by_pty
      \ fade_ratio fg_color fontsize gamma geometry hide_underline
      \ icon_name icon_path im_cursor_color init_str inner_border
      \ input_method iso88591_font_for_usascii letter_space line_space
      \ logging_msg logging_vt_seq logsize mod_meta_key mod_meta_mode
      \ not_use_unicode_font only_use_unicode_font parent_window
      \ receive_string_via_ucs sb_bg_color sb_fg_color
      \ screen_height_ratio screen_width_ratio scrollbar_mode
      \ scrollbar_view_name server_list skip_dialog ssh_private_key
      \ ssh_public_key ssh_x11_forwarding static_backscroll_mode
      \ step_in_changing_font_size tabsize termtype title type_engine
      \ ul_color use_alt_buffer use_ansi_colors use_anti_alias
      \ use_bidi use_bold_font use_clipboard use_combining
      \ use_dynamic_comb use_extended_scroll_shortcut use_ind
      \ use_local_echo use_login_shell use_multi_column_char
      \ use_scrollbar use_transbg use_unicode_property
      \ use_variable_column_width use_vertical_cursor vertical_mode
      \ wall_picture word_separators

syntax match mltermEncoding  "\v\cutf-8"
syntax match mltermEncoding  "\v\cISO-8859-[1-11]"
" syntax match mltermEncoding  "\v\cISO-8859-[13-16]"
syntax match mltermEncoding  "\v\cTIS-620"
syntax match mltermEncoding  "\v\c KOI8-[RUT]"
syntax match mltermEncoding  "\v\cISCII"
syntax match mltermEncoding  "\v\cVISCII"
syntax match mltermEncoding  "\v\cTCVN5712"
syntax match mltermEncoding  "\v\cGEORGIAN_PS"
syntax match mltermEncoding  "\v\cCP125[0-8]"
syntax match mltermEncoding  "\v\cCP874"
syntax match mltermEncoding  "\v\c EUC-JP"
syntax match mltermEncoding  "\v\cEUC-JISX0213"
syntax match mltermEncoding  "\v\cShift_JIS"
syntax match mltermEncoding  "\v\cShift_JISX0213"
syntax match mltermEncoding  "\v\cISO-2022-JP[1-3]"
syntax match mltermEncoding  "\v\cEUC-KR"
syntax match mltermEncoding  "\v\cUHC"
syntax match mltermEncoding  "\v\cJOHAB"
syntax match mltermEncoding  "\v\cISO-2022-KR"
syntax match mltermEncoding  "\v\cGB2312"
syntax match mltermEncoding  "\v\cGBK"
syntax match mltermEncoding  "\v\cGB18030"
syntax match mltermEncoding  "\v\cISO-2022-CN"
syntax match mltermEncoding  "\v\cHZ"
syntax match mltermEncoding  "\v\cEUC-TW"
syntax match mltermEncoding  "\v\cBIG5"
syntax match mltermEncoding  "\v\cBIG5HKSCS"
syntax match mltermEncoding  "\v\cUTF-8"
syntax match mltermEncoding  "\v\cAUTO"

syntax keyword mltermBoolean true false none

syntax match mltermNumber  "\v\=(\s*)\zs(\d+)"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link mltermComment	Comment
hi def link mltermTodo          Todo
hi def link mltermString	String
hi def link mltermOption        Keyword
hi def link mltermBoolean       Boolean
hi def link mltermNumber        Number
hi def link mltermEncoding      Constant


let b:current_syntax = "mlterm"

" vim: ts=8 sw=2
