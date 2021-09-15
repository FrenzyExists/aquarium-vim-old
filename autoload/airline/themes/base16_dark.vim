" Base 16 Aquarium Dark

let s:scheme_slug = substitute("aquarium_dark", "-", "_", "g")

"--------------------"
" --| GUI COLORS |-- "
"--------------------"

let s:base00 = "#20202A", " Default Background
let s:base01 = "#2c2e3e", " Lighter Background (Used for status bars, line number and folding marks)
let s:base02 = "#3D4059", " Selection Background
let s:base03 = "#313449", " Comments, Invisibles, Line Highlighting
let s:base04 = "#63718b", " Dark Foreground (Used for status bars)
let s:base05 = "#ced4df", " Default Foreground, Caret, Delimiters, Operators
let s:base06 = "#414560", " Light Foreground (Not often used)
let s:base07 = "#63718b", " Light Background (Not often used)
let s:base08 = "#ebb9b9", " Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted (red)
let s:base09 = "#e8cca7", " Integers, Boolean, Constants, XML Attributes, Markup Link Url (orange)
let s:base0A = "#e6dfb8", " Classes, Markup Bold, Search Text Background (yellow)
let s:base0B = "#b1dba4", " Strings, Inherited Class, Markup Code, Diff Inserted (green)
let s:base0C = "#b8dceb", " Support, Regular Expressions, Escape Characters, Markup Quotes (cyan)
let s:base0D = "#a3b8ef", " Functions, Methods, Attribute IDs, Headings (blue)
let s:base0E = "#f6bbe7", " Keywords, Storage, Selector, Markup Italic, Diff Changed (magenta)
let s:base0F = "#eAc1c1", " Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>` (pink)

"---------------------"
" --| TERM COLORS |-- "
"---------------------"
" Terminal color definitions
let s:cbase00        = "00"
let s:cbase03        = "08"
let s:cbase05        = "07"
let s:cbase07        = "15"
let s:cbase08        = "01"
let s:cbase0A        = "03"
let s:cbase0B        = "02"
let s:cbase0C        = "06"
let s:cbase0D        = "04"
let s:cbase0E        = "05"

if exists("base16colorspace") && base16colorspace == "256"
    let s:cbase01   = "18"
	let s:cbase02   = "19"
	let s:cbase04   = "20"
	let s:cbase06   = "21"
	let s:cbase09   = "16"
	let s:cbase0F   = "17"
else
	let s:cbase01    = "10"
	let s:cbase02    = "11"
	let s:cbase04    = "12"
	let s:cbase06    = "13"
	let s:cbase09    = "09"
	let s:cbase0F    = "14":
endif

" Call Main line thingy
function airline#themes#aqua_line_style()
    echom "Loading..."
    if filereadable("aquarium.vim")
        source aquarium.vim
        echom "Dark variant theme loaded!"
    endif
endfunction

:call airline#themes#aqua_line_style
