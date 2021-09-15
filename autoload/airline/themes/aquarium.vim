" Base for Airline of Aquarium

let g:airline#themes#{s:scheme_slug}#palette = {}

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

