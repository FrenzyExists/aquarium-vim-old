" Aquarium Theme
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

" Background, stuff
set background=dark

let colors_name = "aquarium"
let s:aquarium_vim_version="0.3.1"

"+-+-+-+-+-+-+-+-+-+-+-+-+-+
"+----- Color Thingy ------+
"+-+-+-+-+-+-+-+-+-+-+-+-+-+

" BASE BG

if !exists("s:aquarium_bg1")
    let s:aquarium_bg1 = "#20202A"
endif

if !exists("s:aquarium_bg2")
    let s:aquarium_bg2 = "#2c2e3e"
endif

if !exists("s:aquarium_bg3")
    let s:aquarium_bg3 = "#3D4059"
endif

if !exists("s:aquarium_bg_dim")
    let s:aquarium_bg_dim = "#313449"
endif

if !exists("s:aquarium_bg_light")
    let s:aquarium_bg_light = "#414560"
endif

" BASE FG

if !exists("s:aquarium_fg")
    let s:aquarium_fg = "#c8cedc"
endif

if !exists("s:aquarium_fg2")
    let s:aquarium_fg = "#63718b"
endif

" OTHER COLORS

if !exists("s:aquarium_red")
    let s:aquarium_red = "#ebb9b9"
endif
 
if !exists("s:aquarium_blue") 
    let s:aquarium_blue = "#cddbf9"
endif

if !exists("s:aquarium_green")
    let s:aquarium_green = "#b1dba4"
endif

if !exists("s:aquarium_yellow")
   let s:aquarium_yellow = "#E6DFB8" 
endif

if !exists("s:aquarium_cyan")
    let s:aquarium_cyan = "#b8dceb" 
endif

if !exists("s:aquarium_magenta")
   let s:aquarium_magenta = "#f6bbe7" 
endif

if !exists("s:aquarium_black")
    let s:aquarium_black = "#4c5664"
endif


" Function Loader thingy
function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", "underline,", "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction


"+-+-+-+-+-+-+-+-+-+-+
"+--- Attributes ----+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", "italic", "")
call s:hi("Underline", "", "", "", "", "underline", "")


"+-+-+-+-+-+-+-+-+-+-+
"+----- Editor ------+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("Normal", s:aquarium_fg, s:aquarium_bg1, "NONE", "NONE", "", "")
call s:hi("Error", s:aquarium_red, s:aquarium_bg2, "", "", "italic", "")
call s:hi("Search", s:aquarium_yellow, s:aquarium_black, "", "", "", "") " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
call s:hi("MatchParen", s:aquarium_cyan, s:aquarium_black, "", "", "", "")
call s:hi("NonText", s:aquarium_fg, s:aquarium_black, "", "", "", "")
call s:hi("Special", s:aquarium_yellow, "", "", "", "italic", "")
call s:hi("SpecialKey", s:aquarium_black, "", "", "", "", "")
call s:hi("Conceal", "", s:aquarium_bg3, "", "NONE", "", "") " placeholder characters substituted for concealed text (see 'conceallevel')
call s:hi("IncSearch", s:aquarium_magenta, s:aquarium_bg2, "NONE", "NONE", "", "")

" Comments and Such
call s:hi("Comment", s:aquarium_bg3, "", "", "", "italic", "")
call s:hi("SpecialComment", s:aquarium_black, "", "", "", "italic", "")

" Line Stuff
call s:hi("LineNr", s:aquarium_bg3, s:aquarium_bg1, "", "", "bold", "") " The Number Columns
call s:hi("CursorLine", "", s:aquarium_bg1, "NONE", "", "NONE", "") " Changes the color focused line where the cursor is
call s:hi("CursorLineNr", s:aquarium_cyan, s:aquarium_bg3, "NONE", "", "NONE", "") " Changes the color focused column number where the cursor is

" Cursor
call s:hi("Cursor", "", s:aquarium_bg_light, s:aquarium_bg_dim, "NONE", "", "") " Regular Cursor thing
call s:hi("CursorIM", s:aquarium_bg_light, s:aquarium_bg_dim, "", "NONE", "", "") " like Cursor, but used when in IME mode
call s:hi("iCursor", s:aquarium_bg_light, s:aquarium_bg_dim, "", "NONE", "", "")

" Columns
call s:hi("SignColumn", "", s:aquarium_bg1, "NONE", "", "", "")
call s:hi("ColorColumn", "", s:aquarium_bg2, "NONE", "", "", "")
call s:hi("CursorColumn", s:aquarium_cyan, "", "NONE", "", "", "")

" Pmenu
call s:hi("Pmenu", s:aquarium_fg, s:aquarium_bg2, "", "", "", "")
call s:hi("PmenuSbar",  s:aquarium_fg, s:aquarium_bg2, "", "", "", "")
call s:hi("PmenuSel", s:aquarium_cyan, s:aquarium_bg2, "", "", "", "")
call s:hi("PmenuThumb", s:aquarium_cyan, s:aquarium_bg2, "", "", "", "")


