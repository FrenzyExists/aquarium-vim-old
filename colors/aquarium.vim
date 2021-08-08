
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

"+-------------------+
"+ Comments and Such +
"+-------------------+
call s:hi("Comment", {"fg": s:aquarium_black, "gui": "italic", "cterm": "italic" })
call s:hi("SpecialComment", {"fg": s:aquarium_cyan, "gui": "italic", "cterm": "italic" })

