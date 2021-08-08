
" Aquarium Theme
" Vim layout config based upon nord-vim
" https://github.com/arcticicestudio/nord-vim
" Name:       aquarium.vim
" Maintainer: https://github.com/frenzyexists/aquarium.vim/
" License: The MIT License (MIT)


highlight clear

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"+--------------------------------+
"+ Totally not an Identify Crisis +
"+--------------------------------+
let g:colors_name = "aquarium"
let s:nord_vim_version="0.2.0"

set background=dark

"+
"+ Color Reference
"+

" +---------------------------------------------+
" |  Color Name  |         RGB        |   Hex   |
" |--------------+--------------------+---------|
" | Black        | rgb(40, 44, 52)    | #282c34 |
" |--------------+--------------------+---------|
" | Foreground   | rgb(171, 178, 191) | #7c7c93 |
" |--------------+--------------------+---------|
" | Red          | rgb(190, 80, 70)   | #ebb9b9 |
" |--------------+--------------------+---------|
" | Green        | rgb(152, 195, 121) | #caf6bb |
" |--------------+--------------------+---------|
" | Yellow       | rgb(229, 192, 123) | #ebe3b9 |
" |--------------+--------------------+---------|
" | Blue         | rgb(97, 175, 239)  | #cddbf9 |
" |--------------+--------------------+---------|
" | Magenta      | rgb(198, 120, 221) | #f6bbe7 |
" |--------------+--------------------+---------|
" | Cyan         | rgb(86, 182, 194)  | #b8dceb |
" |--------------+--------------------+---------|

"+-+-+-+-+-+-+-+-+-+-+
"+-- Define Colors --+
"+-+-+-+-+-+-+-+-+-+-+
let s:aquarium_bg1 = "#1b1b23"
let s:aquarium_bg2 = "#2c2e3e"
let s:aquarium_bg3 = "#3b3b4d"

let s:aquarium_fg1 = "#7c7c93"
let s:aquarium_fg2 = "#63718b"
let s:aquarium_fg3 = "#E5E9F0"

let s:aquarium_red = "#ebb9b9"
let s:aquarium_green = "#caf6bb"
let s:aquarium_yellow = "#ebe3b9"
let s:aquarium_blue = "#cddbf9"
let s:aquarium_magenta = "#f6bbe7"
let s:aquarium_cyan = "#b8dceb"
let s:aquarium_black = "#4c5664"

let s:aquarium1_term = "0"
let s:aquarium3_term = "8"
let s:aquarium5_term = "7"
let s:aquariumd6_term = "15"
let s:aquarium7_term = "14"
let s:aquarium8_term = "6"
let s:aquarium9_term = "4"
let s:aquarium10_term = "12"
let s:aquarium11_term = "1"
let s:aquarium12_term = "11"
let s:aquarium13_term = "3"
let s:aquarium14_term = "2"


" This function is based on one from FlatColor: https://github.com/MaxSt/FlatColor/
" Which in turn was based on one found in hemisu: https://github.com/noahfrederick/vim-hemisu/
let s:group_colors = {} " Cache of default highlight group settings, for later reference via `onedark#extend_highlight`
function! s:hi(group, style, ...)
  if (a:0 > 0) " Will be true if we got here from onedark#extend_highlight
    let s:highlight = s:group_colors[a:group]
    for style_type in ["fg", "bg", "sp"]
      if (has_key(a:style, style_type))
        let l:default_style = (has_key(s:highlight, style_type) ? copy(s:highlight[style_type]) : { "cterm16": "NONE", "cterm": "NONE", "gui": "NONE" })
        let s:highlight[style_type] = extend(l:default_style, a:style[style_type])
      endif
    endfor
    if (has_key(a:style, "gui"))
      let s:highlight.gui = a:style.gui
    endif
  else
    let s:highlight = a:style
    let s:group_colors[a:group] = s:highlight " Cache default highlight group settings
  endif

  execute "highlight" a:group
    \ "guifg="   (has_key(s:highlight, "fg")    ? s:highlight.fg.gui   : "NONE")
    \ "guibg="   (has_key(s:highlight, "bg")    ? s:highlight.bg.gui   : "NONE")
    \ "guisp="   (has_key(s:highlight, "sp")    ? s:highlight.sp.gui   : "NONE")
    \ "gui="     (has_key(s:highlight, "gui")   ? s:highlight.gui      : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(s:highlight, "cterm") ? s:highlight.cterm    : "NONE")
endfunction

"+---------------+
"+ UI Components +
"+---------------+

"+-------------------+
"+ Comments and Such +
"+-------------------+
call s:hi("Comment", {"fg": s:aquarium_black, "gui": "italic", "cterm": "italic" })
call s:hi("SpecialComment", {"fg": s:aquarium_cyan, "gui": "italic", "cterm": "italic" })

"+-+-+-+-+-+-+-+-+-+-+
"+----- Editor ------+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("ColorColumn", { "fg": s:aquarium_bg2 }) " used for the columns set with 'colorcolumn'
call s:hi("Cursor", { "fg": s:aquarium_bg2, "bg": s:aquarium_blue }) " the character under the cursor
call s:hi("CursorIM", {}) " like Cursor, but used when in IME mode
call s:hi("Conceal", { "fg": s:aquarium_yellow }) " placeholder characters substituted for concealed text (see 'conceallevel')
call s:hi("CursorLine", { "bg": s:aquarium_bg2 })
call s:hi("Error", { "fg": s:aquarium_red }) " any erroneous construct

"+-+-+-+-+-+-+-+-+
"+-- Fish Shell -+
"+-+-+-+-+-+-+-+-+
call s:hi("fishKeyword", { "fg": s:aquarium_magenta, "cterm": "italic", "gui": "italic" })
call s:hi("fishConditional", { "fg": s:aquarium_magenta })

"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- Lang Specifics aka Fallbacks ---+
"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("Todo", { "fg": s:aquarium_magenta }) " anything that needs extra attention; mostly the keywords TODO FIXME and XXX
call s:hi("Type", { "fg": s:aquarium_yellow }) " int, long, char, etc.
call s:hi("Boolean", { "fg": s:aquarium_yellow }) " a boolean constant: TRUE, false
call s:hi("Number", { "fg": s:aquarium_yellow }) " a number constant: 234, 0xff
call s:hi("String", { "fg": s:aquarium_green }) " a string constant: 'this is a string'
call s:hi("Character", { "fg": s:aquarium_green }) " a character constant: 'c', '\n'
call s:hi("Macro", { "fg": s:aquarium_magenta }) " same as Define
call s:hi("Exception", { "fg": s:aquarium_magenta }) " try, catch, throw
call s:hi("StorageClass", { "fg": s:aquarium_yellow }) " static, register, volatile, etc.
call s:hi("Structure", { "fg": s:aquarium_yellow }) " struct, union, enum, etc.
call s:hi("Typedef", { "fg": s:aquarium_yellow }) " A typedef
call s:hi("Special", { "fg": s:aquarium_blue }) " any special symbol
call s:hi("SpecialChar", { "fg": s:aquarium_yellow }) " special character in a constant
call s:hi("Tag", {}) " you can use CTRL-] on this
call s:hi("Delimiter", {}) " character that needs attention
call s:hi("Operator", { "fg": s:aquarium_magenta }) " sizeof", "+", "*", etc.
call s:hi("Keyword", { "fg": s:aquarium_red }) " any other keyword
call s:hi("Debug", {}) " debugging statements
call s:hi("Underlined", { "gui": "underline", "cterm": "underline" }) " text that stands out, HTML links
call s:hi("Ignore", {}) " left blank, hidden
call s:hi("Float", { "fg": s:aquarium_magenta }) " a floating point constant: 2.3e10
call s:hi("Identifier", { "fg": s:aquarium_red }) " any variable name
call s:hi("Function", { "fg": s:aquarium_blue }) " function name (also: methods for classes)
call s:hi("Include", { "fg": s:aquarium_blue }) " preprocessor #include
call s:hi("Statement", { "fg": s:aquarium_magenta }) " any statement
call s:hi("Conditional", { "fg": s:aquarium_magenta }) " if, then, else, endif, switch, etc.
call s:hi("Repeat", { "fg": s:aquarium_magenta }) " for, do, while, etc.
call s:hi("Label", { "fg": s:aquarium_magenta }) " case, default, etc.
"-----------------------------------------------------------------------------------------

"+---------------------+
"+ Rust Lang Highlight +
"+---------------------+
call s:hi("rustAttribute", { "fg": s:aquarium_blue })
call s:hi("rustEnum", { "fg": s:aquarium_yellow, "cterm": "bold", "gui": "bold" })
call s:hi("rustMacro", { "fg": s:aquarium_cyan, "cterm": "bold", "gui": "bold" })
call s:hi("rustModPath", { "fg": s:aquarium_yellow })
call s:hi("rustPanic", { "fg": s:aquarium_red, "cterm": "bold", "gui": "bold" })
call s:hi("rustTrait", { "fg": s:aquarium_yellow, "cterm": "italic", "gui": "italic" })
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

"+----------------------+
"+ JSON Lang Hightlight +
"+----------------------+
call s:hi("jsonCommentError", { "fg": s:aquarium_fg2 })
call s:hi("jsonKeyword", { "fg": s:aquarium_red })
call s:hi("jsonBoolean", { "fg": s:aquarium_yellow })
call s:hi("jsonNumber", { "fg": s:aquarium_yellow })
call s:hi("jsonQuote", { "fg": s:aquarium_fg2 })
call s:hi("jsonMissingCommaError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:hi("jsonNoQuotesError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:hi("jsonNumError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:hi("jsonString", { "fg": s:aquarium_green })
call s:hi("jsonStringSQError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:hi("jsonSemicolonError", { "fg": s:aquarium_red, "gui": "reverse" })


