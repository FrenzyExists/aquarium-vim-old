" Base 16 Aquarium Light

let s:scheme_slug = substitute("aquarium_light", "-", "_", "g")
let g:airline#themes#{s:scheme_slug}#palette = {}
"--------------------"
" --| GUI COLORS |-- "
"--------------------"

let s:base00 = "#E6E6F1", " Default Background
let s:base01 = "#D5D4E0", " Lighter Background (Used for status bars, line number and folding marks)
let s:base02 = "#3D4059", " Selection Background
let s:base03 = "#CCCBD9", " Comments, Invisibles, Line Highlighting
let s:base04 = "#7F8E9D", " Dark Foreground (Used for status bars)
let s:base05 = "#708190", " Default Foreground, Caret, Delimiters, Operators
let s:base06 = "#9CA6B9", " Light Foreground (Not often used)
let s:base07 = "#D9DBE6", " Light Background (Not often used)
let s:base08 = "#D04B4B", " Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted (red)
let s:base09 = "#D66652", " Integers, Boolean, Constants, XML Attributes, Markup Link Url (orange)
let s:base0A = "#EFB165", " Classes, Markup Bold, Search Text Background (yellow)
let s:base0B = "#7EA070", " Strings, Inherited Class, Markup Code, Diff Inserted (green)
let s:base0C = "#829FB0", " Support, Regular Expressions, Escape Characters, Markup Quotes (cyan)
let s:base0D = "#547DB6", " Functions, Methods, Attribute IDs, Headings (blue)
let s:base0E = "#9F78B8", " Keywords, Storage, Selector, Markup Italic, Diff Changed (magenta)
let s:base0F = "#E06B6B", " Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>` (pink)

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

"---------------------"
" --| NORMAL MODE |-- "
"---------------------"
let g:airline#themes#{s:scheme_slug}#palette.normal = airline#themes#generate_color_map(
	\ [ s:base01, s:base04, s:cbase01, s:cbase04 ],
	\ [ s:base04, s:base02, s:cbase04, s:cbase02 ],
	\ [ s:base04, s:base01, s:cbase04, s:cbase01 ])
let g:airline#themes#{s:scheme_slug}#palette.normal_modified = {
	\ 'airline_c' : [ s:base07, s:base01, s:cbase07, s:cbase01 ]}

"---------------------"
" --| INSERT MODE |-- "
"---------------------"
let g:airline#themes#{s:scheme_slug}#palette.insert = airline#themes#generate_color_map(
	\ [ s:base01, s:base0B, s:cbase01, s:cbase0B ],
	\ [ s:base04, s:base02, s:cbase04, s:cbase02 ],
	\ [ s:base04, s:base01, s:cbase04, s:cbase01 ])
let g:airline#themes#{s:scheme_slug}#palette.insert_modified = {
	\ 'airline_c' : [ s:base07, s:base01, s:cbase07, s:cbase01 ]}

"---------------------"
" --| REPLEACE MODE |-- "
"---------------------"
let g:airline#themes#{s:scheme_slug}#palette.replace = airline#themes#generate_color_map(
	\ [ s:base01, s:base0E, s:cbase01, s:cbase0E ],
	\ [ s:base04, s:base02, s:cbase04, s:cbase02 ],
	\ [ s:base04, s:base01, s:cbase04, s:cbase01 ])
let g:airline#themes#{s:scheme_slug}#palette.replace_modified = {
	\ 'airline_c' : [ s:base07, s:base01, s:cbase07, s:cbase01 ]}

"---------------------"
" --| VISUAL MODE |-- "
"---------------------"
let g:airline#themes#{s:scheme_slug}#palette.visual = airline#themes#generate_color_map(
	\ [ s:base01, s:base09, s:cbase01, s:cbase09 ],
	\ [ s:base04, s:base02, s:cbase04, s:cbase02 ],
	\ [ s:base04, s:base01, s:cbase04, s:cbase01 ])

let g:airline#themes#{s:scheme_slug}#palette.visual_modified = {
	\ 'airline_c' : [ s:base07, s:base01, s:cbase07, s:cbase01 ]}

"-----------------------"
" --| INACTIVE MODE |-- "
"-----------------------"
let g:airline#themes#{s:scheme_slug}#palette.inactive = airline#themes#generate_color_map(
	\ [ s:base01, s:base01, s:cbase01, s:cbase01 ],
	\ [ s:base04, s:base01, s:cbase04, s:cbase01 ],
	\ [ s:base05, s:base01, s:cbase05, s:cbase01 ])


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#{s:scheme_slug}#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:base07, s:base02, s:cbase07, s:cbase02, '' ],
      \ [ s:base07, s:base04, s:cbase07, s:cbase04, '' ],
      \ [ s:base05, s:base01, s:cbase05, s:cbase01, 'bold' ])

