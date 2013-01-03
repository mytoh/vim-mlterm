

let s:save_cpo = &cpo
set cpo&vim

function! mlterm#option#define_syntax()
  call s:define_keywords()
  call s:define_highlights()
endfunction

function! s:define_keywords()
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
" not detected by tools/extract_keywords.sh
syntax keyword mltermOption
      \ depth use_xim daemon_mode conf_menu_path_1 conf_menu_path_2
      \ ssh_keepalive_interval max_ptys startup_screens iscii_lang
      \ compose_dec_special_font use_cp932_ucs_for_xft
      \ font_size_range 

endfunction

function! s:define_highlights()
  highlight default link mltermOption        PreProc
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
