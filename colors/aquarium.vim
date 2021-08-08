
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

"+---------------------+
"+ Ruby Lang Highlight +
"+---------------------+
call s:h("rubyBlockParameter", { "fg": s:aquarium_red})
call s:h("rubyBlockParameterList", { "fg": s:aquarium_red })
call s:h("rubyClass", { "fg": s:aquarium_yellow})
call s:h("rubyConstant", { "fg": s:aquarium_yellow})
call s:h("rubyControl", { "fg": s:aquarium_yellow })
call s:h("rubyEscape", { "fg": s:aquarium_red })
call s:h("rubyFunction", { "fg": s:aquarium_blue })
call s:h("rubyGlobalVariable", { "fg": s:aquarium_red })
call s:h("rubyInclude", { "fg": s:aquarium_blue})
call s:h("rubyIncluderubyGlobalVariable", { "fg": s:aquarium_red })
call s:h("rubyInstanceVariable", { "fg": s:aquarium_red })
call s:h("rubyInterpolation", { "fg": s:aquarium_cyan })
call s:h("rubyInterpolationDelimiter", { "fg": s:aquarium_red })
call s:h("rubyInterpolationDelimiter", { "fg": s:aquarium_red })
call s:h("rubyRegexp", { "fg": s:aquarium_cyan})
call s:h("rubyRegexpDelimiter", { "fg": s:aquarium_cyan})
call s:h("rubyStringDelimiter", { "fg": s:aquarium_green})
call s:h("rubySymbol", { "fg": s:aquarium_cyan })

"+----------------------------+
"+ Typescript Lang Hightlight +
"+----------------------------+
call s:h("typescriptReserved", { "fg": s:aquarium_yellow })
call s:h("typescriptEndColons", { "fg": s:aquarium_fg2 })
call s:h("typescriptBraces", { "fg": s:aquarium_fg2 })

"+-------------------+
"+ Go Lang Highlight +
"+-------------------+
call s:h("goDeclaration", { "fg": s:aquarium_magenta })
call s:h("goBuiltins", { "fg": s:aquarium_cyan })
call s:h("goFunctionCall", { "fg": s:aquarium_blue })
call s:h("goVarDefs", { "fg": s:aquarium_red })
call s:h("goVarAssign", { "fg": s:aquarium_red })
call s:h("goVar", { "fg": s:aquarium_magenta })
call s:h("goConst", { "fg": s:aquarium_magenta })
call s:h("goType", { "fg": s:aquarium_yellow })
call s:h("goTypeName", { "fg": s:aquarium_yellow })
call s:h("goDeclType", { "fg": s:aquarium_cyan })
call s:h("goTypeDecl", { "fg": s:aquarium_magenta })

"+---------------------+
"+ HTML Lang Highlight +
"+---------------------+
call s:h("htmlArg", { "fg": s:aquarium_yellow })
call s:h("htmlBold", { "fg": s:aquarium_yellow, "gui": "bold", "cterm": "bold" })
call s:h("htmlEndTag", { "fg": s:aquarium_fg2 })
call s:h("htmlH1", { "fg": s:aquarium_red })
call s:h("htmlH2", { "fg": s:aquarium_red })
call s:h("htmlH3", { "fg": s:aquarium_red })
call s:h("htmlH4", { "fg": s:aquarium_red })
call s:h("htmlH5", { "fg": s:aquarium_red })
call s:h("htmlH6", { "fg": s:aquarium_red })
call s:h("htmlItalic", { "fg": s:aquarium_magenta, "gui": "italic", "cterm": "italic" })
call s:h("htmlLink", { "fg": s:aquarium_cyan, "gui": "underline", "cterm": "underline" })
call s:h("htmlSpecialChar", { "fg": s:aquarium_yellow })
call s:h("htmlSpecialTagName", { "fg": s:aquarium_red })
call s:h("htmlTag", { "fg": s:aquarium_fg2 })
call s:h("htmlTagN", { "fg": s:aquarium_red })
call s:h("htmlTagName", { "fg": s:aquarium_red })
call s:h("htmlTitle", { "fg": s:aquarium_fg2 })

"+----------------------------+
"+ JavaScript Lang Hightlight +
"+----------------------------+
call s:h("javaScriptBraces", { "fg": s:aquarium_fg2 })
call s:h("javaScriptFunction", { "fg": s:aquarium_yellow })
call s:h("javaScriptIdentifier", { "fg": s:aquarium_yellow })
call s:h("javaScriptNull", { "fg": s:aquarium_red })
call s:h("javaScriptNumber", { "fg": s:aquarium_blue })
call s:h("javaScriptRequire", { "fg": s:aquarium_cyan })
call s:h("javaScriptReserved", { "fg": s:aquarium_magenta })
" https://github.com/pangloss/vim-javascript
call s:h("jsArrowFunction", { "fg": s:aquarium_magenta })
call s:h("jsClassKeyword", { "fg": s:aquarium_magenta })
call s:h("jsClassMethodType", { "fg": s:aquarium_magenta })
call s:h("jsDocParam", { "fg": s:aquarium_blue })
call s:h("jsDocTags", { "fg": s:aquarium_magenta })
call s:h("jsExport", { "fg": s:aquarium_magenta })
call s:h("jsExportDefault", { "fg": s:aquarium_magenta })
call s:h("jsExtendsKeyword", { "fg": s:aquarium_magenta })
call s:h("jsFrom", { "fg": s:aquarium_magenta })
call s:h("jsFuncCall", { "fg": s:aquarium_blue })
call s:h("jsFunction", { "fg": s:aquarium_magenta })
call s:h("jsGenerator", { "fg": s:aquarium_yellow })
call s:h("jsGlobalObjects", { "fg": s:aquarium_yellow })
call s:h("jsImport", { "fg": s:aquarium_magenta })
call s:h("jsModuleAs", { "fg": s:aquarium_magenta })
call s:h("jsModuleWords", { "fg": s:aquarium_magenta })
call s:h("jsModules", { "fg": s:aquarium_magenta })
call s:h("jsNull", { "fg": s:aquarium_yellow })
call s:h("jsOperator", { "fg": s:aquarium_magenta })
call s:h("jsStorageClass", { "fg": s:aquarium_magenta })
call s:h("jsSuper", { "fg": s:aquarium_red })
call s:h("jsTemplateBraces", { "fg": s:aquarium_red })
call s:h("jsTemplateVar", { "fg": s:aquarium_green })
call s:h("jsThis", { "fg": s:aquarium_red })
call s:h("jsUndefined", { "fg": s:aquarium_yellow })

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- XML Lang Highlight -+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:h("xmlAttrib", { "fg": s:aquarium_yellow })
call s:h("xmlEndTag", { "fg": s:aquarium_red })
call s:h("xmlTag", { "fg": s:aquarium_red })
call s:h("xmlTagName", { "fg": s:aquarium_red })

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- TeX Lang Highlight -+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:h("texStatement", { "fg": s:aquarium_magenta })
call s:h("texSubscripts", { "fg": s:dark_yellow })
call s:h("texSuperscripts", { "fg": s:aquarium_yellow })
call s:h("texTodo", { "fg": s:aquarium_bg3 })
call s:h("texBeginEnd", { "fg": s:aquarium_magenta })
call s:h("texBeginEndName", { "fg": s:aquarium_blue })
call s:h("texMathMatcher", { "fg": s:aquarium_blue })
call s:h("texMathDelim", { "fg": s:aquarium_blue })
call s:h("texDelimiter", { "fg": s:aquarium_yellow })
call s:h("texSpecialChar", { "fg": s:aquarium_yellow })
call s:h("texCite", { "fg": s:aquarium_blue })
call s:h("texRefZone", { "fg": s:aquarium_blue })

"+--------------------+
"+ CSS Lang Highlight +
"+--------------------+
call s:h("cssAttrComma", { "fg": s:aquarium_magenta })
call s:h("cssAttributeSelector", { "fg": s:aquarium_green })
call s:h("cssBraces", { "fg": s:aquarium_fg2 })
call s:h("cssClassName", { "fg": s:aquarium_yellow })
call s:h("cssClassNameDot", { "fg": s:aquarium_yellow })
call s:h("cssDefinition", { "fg": s:aquarium_magenta })
call s:h("cssFontAttr", { "fg": s:aquarium_yellow })
call s:h("cssFontDescriptor", { "fg": s:aquarium_magenta })
call s:h("cssFunctionName", { "fg": s:aquarium_blue })
call s:h("cssIdentifier", { "fg": s:aquarium_blue })
call s:h("cssImportant", { "fg": s:aquarium_magenta })
call s:h("cssInclude", { "fg": s:aquarium_fg2 })
call s:h("cssIncludeKeyword", { "fg": s:aquarium_magenta })
call s:h("cssMediaType", { "fg": s:aquarium_yellow })
call s:h("cssProp", { "fg": s:aquarium_fg2 })
call s:h("cssPseudoClassId", { "fg": s:aquarium_yellow })
call s:h("cssSelectorOp", { "fg": s:aquarium_magenta })
call s:h("cssSelectorOp2", { "fg": s:aquarium_magenta })
call s:h("cssTagName", { "fg": s:aquarium_red })

"+--------------------+
" Perl Lang Highlight +
"+--------------------+
call s:h("perlFiledescRead", { "fg": s:aquarium_green })
call s:h("perlFunction", { "fg": s:aquarium_magenta })
call s:h("perlMatchStartEnd",{ "fg": s:aquarium_blue })
call s:h("perlMethod", { "fg": s:aquarium_magenta })
call s:h("perlPOD", { "fg": s:aquarium_bg2 })
call s:h("perlSharpBang", { "fg": s:aquarium_fg2 })
call s:h("perlSpecialString",{ "fg": s:aquarium_yellow })
call s:h("perlStatementFiledesc", { "fg": s:aquarium_red })
call s:h("perlStatementFlow",{ "fg": s:aquarium_red })
call s:h("perlStatementInclude", { "fg": s:aquarium_magenta })
call s:h("perlStatementScalar",{ "fg": s:aquarium_magenta })
call s:h("perlStatementStorage", { "fg": s:aquarium_magenta })
call s:h("perlSubName",{ "fg": s:aquarium_yellow })
call s:h("perlVarPlain",{ "fg": s:aquarium_blue })

"+----------------------+
"+ PHP :amg Hightlight
"+----------------------+
call s:h("phpVarSelector", { "fg": s:aquarium_red })
call s:h("phpOperator", { "fg": s:aquarium_fg2 })
call s:h("phpParent", { "fg": s:aquarium_fg2 })
call s:h("phpMemberSelector", { "fg": s:aquarium_fg2 })
call s:h("phpType", { "fg": s:aquarium_magenta })
call s:h("phpKeyword", { "fg": s:aquarium_magenta })
call s:h("phpClass", { "fg": s:aquarium_yellow })
call s:h("phpUseClass", { "fg": s:aquarium_fg2 })
call s:h("phpUseAlias", { "fg": s:aquarium_fg2 })
call s:h("phpInclude", { "fg": s:aquarium_magenta })
call s:h("phpClassExtends", { "fg": s:aquarium_green })
call s:h("phpDocTags", { "fg": s:aquarium_fg2 })
call s:h("phpFunction", { "fg": s:aquarium_blue })
call s:h("phpFunctions", { "fg": s:aquarium_cyan })
call s:h("phpMethodsVar", { "fg": s:aquarium_yellow })
call s:h("phpMagicConstants", { "fg": s:aquarium_yellow })
call s:h("phpSuperglobals", { "fg": s:aquarium_red })
call s:h("phpConstants", { "fg": s:aquarium_yellow })

"+-------------------------+
"+ Markdown Lang Highlight +
"+-------------------------+
call s:h("markdownBlockquote", { "fg": s:aquarium_fg2 })
call s:h("markdownBold", { "fg": s:aquarium_yellow, "gui": "bold", "cterm": "bold" })
call s:h("markdownCode", { "fg": s:aquarium_green })
call s:h("markdownCodeBlock", { "fg": s:aquarium_green })
call s:h("markdownCodeDelimiter", { "fg": s:aquarium_green })
call s:h("markdownH1", { "fg": s:aquarium_red })
call s:h("markdownH2", { "fg": s:aquarium_red })
call s:h("markdownH3", { "fg": s:aquarium_red })
call s:h("markdownH4", { "fg": s:aquarium_red })
call s:h("markdownH5", { "fg": s:aquarium_red })
call s:h("markdownH6", { "fg": s:aquarium_red })
call s:h("markdownHeadingDelimiter", { "fg": s:aquarium_red })
call s:h("markdownHeadingRule", { "fg": s:aquarium_fg2 })
call s:h("markdownId", { "fg": s:aquarium_magenta })
call s:h("markdownIdDeclaration", { "fg": s:aquarium_blue })
call s:h("markdownIdDelimiter", { "fg": s:aquarium_magenta })
call s:h("markdownItalic", { "fg": s:aquarium_magenta, "gui": "italic", "cterm": "italic" })
call s:h("markdownLinkDelimiter", { "fg": s:aquarium_magenta })
call s:h("markdownLinkText", { "fg": s:aquarium_blue })
call s:h("markdownListMarker", { "fg": s:aquarium_red })
call s:h("markdownOrderedListMarker", { "fg": s:aquarium_red })
call s:h("markdownRule", { "fg": s:aquarium_fg2 })
call s:h("markdownUrl", { "fg": s:aquarium_cyan, "gui": "underline", "cterm": "underline" })

"+-+-+-+-+-+-+-+-+
"+-- Fish Shell -+
"+-+-+-+-+-+-+-+-+
call s:h("fishKeyword", { "fg": s:aquarium_magenta, "cterm": "italic", "gui": "italic" })
call s:h("fishConditional", { "fg": s:aquarium_magenta })

"+----------------------+
"+ JSON Lang Hightlight +
"+----------------------+
call s:h("jsonCommentError", { "fg": s:aquarium_fg2 })
call s:h("jsonKeyword", { "fg": s:aquarium_red })
call s:h("jsonBoolean", { "fg": s:aquarium_yellow })
call s:h("jsonNumber", { "fg": s:aquarium_yellow })
call s:h("jsonQuote", { "fg": s:aquarium_fg2 })
call s:h("jsonMissingCommaError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:h("jsonNoQuotesError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:h("jsonNumError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:h("jsonString", { "fg": s:aquarium_green })
call s:h("jsonStringSQError", { "fg": s:aquarium_red, "gui": "reverse" })
call s:h("jsonSemicolonError", { "fg": s:aquarium_red, "gui": "reverse" })

"+------------------+
"+ Git Highlighting +
"+------------------+
call s:h("gitcommitComment", { "fg": s:aquarium_fg3 })
call s:h("gitcommitUnmerged", { "fg": s:aquarium_green })
call s:h("gitcommitOnBranch", { "fg": s:aquarium_cyan })
call s:h("gitcommitBranch", { "fg": s:aquarium_magenta })
call s:h("gitcommitDiscardedType", { "fg": s:aquarium_red })
call s:h("gitcommitSelectedType", { "fg": s:aquarium_green })
call s:h("gitcommitHeader", {"fg": s:aquarium_green })
call s:h("gitcommitUntrackedFile", { "fg": s:aquarium_cyan })
call s:h("gitcommitDiscardedFile", { "fg": s:aquarium_red })
call s:h("gitcommitSelectedFile", { "fg": s:aquarium_green })
call s:h("gitcommitUnmergedFile", { "fg": s:aquarium_yellow })
call s:h("gitcommitFile", { "fg": s:aquarium_magenta })
call s:h("gitcommitSummary", { "fg": s:aquarium_fg2 })
call s:h("gitcommitOverflow", { "fg": s:aquarium_red })
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

"+---------------+
"+ UI Components +
"+---------------+
"
"+-+-+-+-+-+-+-+-+-+-+
"+--- Attributes ----+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", "italic", "")
call s:hi("Underline", "", "", "", "", "underline", "")

"+-+-+-+-+-+-+-+-+-+-+
"+----- Editor ------+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("ColorColumn", { "fg": s:aquarium_bg2 }) " used for the columns set with 'colorcolumn'
call s:hi("Cursor", { "fg": s:aquarium_bg2, "bg": s:aquarium_blue }) " the character under the cursor
call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
call s:h("Conceal", { "fg": s:aquarium_yellow }) " placeholder characters substituted for concealed text (see 'conceallevel')
call s:hi("CursorLine", { "bg": s:aquarium_bg2 })
call s:h("Error", { "fg": s:aquarium_red }) " any erroneous construct
call s:hi("iCursor",{ "fg": s:aquarium_fg2, "bg":s:aquarium_black1 })
call s:hi("LineNr", { "fg": s:aquarium_magenta, "bg":s:aquarium_black1 })
call s:hi("MatchParen", { "fg": s:aquarium_cyan, "bg":s:aquarium_black1 })
call s:hi("NonText", { "fg": s:aquarium_fg2, "bg":s:aquarium_black1 })
call s:hi("Normal", { "fg": s:aquarium_fg2, "bg":s:aquarium_black1 })
call s:hi("Pmenu", { "fg": s:aquarium_fg2, "bg":s:aquarium_black1 })
call s:hi("PmenuSbar",  {"fg": s:aquarium_fg2, "bg":s:aquarium_black1 })
call s:hi("PmenuSel", {"fg": s:aquarium_cyan, "bg":s:aquarium_black1 })
call s:hi("PmenuThumb", { "fg": s:aquarium_cyan, "bg": s:aquarium_bg2 })
call s:hi("SpecialKey", {"fg": s:aquarium_black1 })
call s:h("Search", { "bg": s:aquarium_black1, "fg": s:aquarium_yellow }) " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.

"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- Lang Specifics aka Fallbacks ---+
"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
call s:h("Todo", { "fg": s:aquarium_magenta }) " anything that needs extra attention; mostly the keywords TODO FIXME and XXX
call s:h("Type", { "fg": s:aquarium_yellow }) " int, long, char, etc.
call s:h("Boolean", { "fg": aquarium_yellow }) " a boolean constant: TRUE, false
call s:h("Number", { "fg": s:aquarium_yellow }) " a number constant: 234, 0xff
call s:h("String", { "fg": s:aquarium_green }) " a string constant: 'this is a string'
call s:h("Character", { "fg": s:aquarium_green }) " a character constant: 'c', '\n'
call s:h("Macro", { "fg": s:aquarium_magenta }) " same as Define
call s:h("Exception", { "fg": s:aquarium_magenta }) " try, catch, throw
call s:h("StorageClass", { "fg": s:aquarium_yellow }) " static, register, volatile, etc.
call s:h("Structure", { "fg": s:aquarium_yellow }) " struct, union, enum, etc.
call s:h("Typedef", { "fg": s:aquarium_yellow }) " A typedef
call s:h("Special", { "fg": s:aquarium_blue }) " any special symbol
call s:h("SpecialChar", { "fg": s:aquarium_yellow }) " special character in a constant
call s:h("Tag", {}) " you can use CTRL-] on this
call s:h("Delimiter", {}) " character that needs attention
call s:h("Operator", { "fg": s:aquarium_magenta }) " sizeof", "+", "*", etc.
call s:h("Keyword", { "fg": s:aquarium_red }) " any other keyword
call s:h("Debug", {}) " debugging statements
call s:h("Underlined", { "gui": "underline", "cterm": "underline" }) " text that stands out, HTML links
call s:h("Ignore", {}) " left blank, hidden
call s:h("Float", { "fg": s:aquarium_magenta }) " a floating point constant: 2.3e10
call s:h("Identifier", { "fg": s:aquarium_red }) " any variable name
call s:h("Function", { "fg": s:aquarium_blue }) " function name (also: methods for classes)
call s:h("Include", { "fg": s:aquarium_blue }) " preprocessor #include
call s:h("Statement", { "fg": s:aquarium_magenta }) " any statement
call s:h("Conditional", { "fg": s:aquarium_magenta }) " if, then, else, endif, switch, etc.
call s:h("Repeat", { "fg": s:aquarium_magenta }) " for, do, while, etc.
call s:h("Label", { "fg": s:aquarium_magenta }) " case, default, etc.
"-----------------------------------------------------------------------------------------

"+-+-+-+-+-+-+-+-+-+-+-+
"+-- Diff Highlight ---+
"+-+-+-+-+-+-+-+-+-+-+-+
if &diff
  " Don't change the background color in diff mode
  call s:h("CursorLine", { "gui": "underline" }) " the screen line that the cursor is in when 'cursorline' is set
else
  call s:h("CursorLine", { "bg": s:aquarium_bg2 }) " the screen line that the cursor is in when 'cursorline' is set
endif
call s:h("Directory", { "fg": s:aquarium_blue }) " directory names (and other special names in listings)
call s:h("DiffAdd", { "bg": s:aquarium_green, "fg": s:aquarium_black }) " diff mode: Added line
call s:h("DiffChange", { "fg": s:aquarium_yellow, "gui": "underline", "cterm": "underline" }) " diff mode: Changed line
call s:h("DiffDelete", { "bg": s:aquarium_red, "fg": s:aquarium_black }) " diff mode: Deleted line
call s:h("DiffText", { "bg": s:aquarium_yellow, "fg": s:aquarium_black }) " diff mode: Changed text within a changed line

"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- Spell Check Highlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
" Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
call s:hi("SpellBad", { "fg": s:aquarium_red, "bg":aquarium_bg2, "cterm": "undercurl", "gui": "undercurl" })
" Word that should start with a capital. This will be combined with the highlighting used otherwise.
call s:hi("SpellCap", {"fg": s:aquarium_yellow, "bg": s:aquarium_bg2, "cterm": "undercurl", "gui": "undercurl" })
" Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
call s:hi("SpellLocal", {"fg": s:aquarium_cyan, "bg": s:aquarium_bg2, "cterm": "undercurl", "gui": "undercurl" })
" Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
call s:hi("SpellRare", {"fg": s:aquarium_blue, "bg": s:aquarium_bg2, "cterm": "undercurl", "gui": "undercurl" })

"+-+-+-+-+-+-+-+-+-+-+-+
" Visual Something
"+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("Visual", { "bg": s:aquarium_bg2 })
call s:hi("VisualNOS", { "bg": s:aquarium_bg2 })

"+-+-+-+-+-+-+-+-+-+-+-+
"+- Neovim Support -+
"+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("healthError", s:aquarium_red1, s:aquarium_background2, s:nord11_term, s:nord1_term, "", "")
call s:hi("healthSuccess", s:nord14_gui, s:aquarium_background2, s:nord14_term, s:nord1_term, "", "")
call s:hi("healthWarning", s:aquarium_yellow1, s:aquarium_background2, s:nord13_term, s:nord1_term, "", "")

"+-+-+-+-+-+-+-+-+-+-+-+
"+--- Prompt/Status ---+
"+-+-+-+-+-+-+-+-+-+-+-+
#call s:hi("EndOfBuffer", s:aquarium_background2, "", s:nord1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:aquarium_foreground1, s:aquarium_red2, "NONE", s:nord11_term, "", "")
call s:hi("ModeMsg", s:aquarium_foreground1, "", "", "", "", "")
call s:hi("MoreMsg", s:aquarium_cyan1, "", s:nord8_term, "", "", "")
call s:hi("Question", s:aquarium_foreground1, "", "NONE", "", "", "")

"+-+-+-+-+-+-+-+-+-+-+-+
"+--- Prompt/Status ---+
"+-+-+-+-+-+-+-+-+-+-+-+
call s:h("StatusLine", { "fg": s:aquarium_fg1, "bg": s:aquarium_bg2 }) " status line of current window
call s:h("StatusLineNC", { "fg": s:aquarium_bg2 }) "status lines of not-current windows Note: if this is equal to 'StatusLine' Vim will use '^^^' in the status line of the current window.
call s:h("StatusLineTerm", { "fg": s:aquarium_fg1, "bg": s:aquarium_bg2 }) " status line of current :terminal window
call s:h("StatusLineTermNC", { "fg": s:aquarium_bg2 }) " status line of non-current :terminal window

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+--- Ascii Hightlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("asciidocAttributeEntry", {"fg": s:aquarium_blue })
call s:hi("asciidocAttributeList", {"fg": s:aquarium_blue })
call s:hi("asciidocAttributeRef", {"fg": s:aquarium_blue })
call s:hi("asciidocHLabel", {"fg": s:aquarium_magenta })
call s:hi("asciidocListingBlock", {"fg": s:aquarium_yellow })
call s:hi("asciidocMacroAttributes",{"fg": s:aquarium_cyan })
call s:hi("asciidocOneLineTitle", {"fg": s:aquarium_cyan })
call s:hi("asciidocPassthroughBlock", {"fg": s:aquarium_magenta })
call s:hi("asciidocQuotedMonospaced", {"fg": s:aquarium_yellow })
call s:hi("asciidocTriplePlusPassthrough", {"fg": s:aquarium_yellow })
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

"+-+-+-+-+-+-+-+-+-+-+
"+-- Awk Highlight --+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("awkCharClass", {"fg": s:aquarium_yellow })
call s:hi("awkPatterns", {"fg": s:aquarium_cyan,  "gui": "italic", "cterm": "italic" })
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+--- Cmake Hightlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("cmakeGeneratorExpression", {"fg": s:aquarium_blue })

if has("nvim")
  " Neovim LSP 
  call s:h("LspDiagnosticsDefaultError", { "fg": s:aquarium_red })
  call s:h("LspDiagnosticsDefaultWarning", { "fg": s:aquarium_yellow })
  call s:h("LspDiagnosticsDefaultInformation", { "fg": s:aquarium_blue })
  call s:h("LspDiagnosticsDefaultHint", { "fg": s:aquarium_cyan })
  call s:h("LspDiagnosticsUnderlineError", { "fg": s:aquarium_red, "gui": "underline", "cterm": "underline" })
  call s:h("LspDiagnosticsUnderlineWarning", { "fg": s:aquarium_red, "gui": "underline", "cterm": "underline" })
  call s:h("LspDiagnosticsUnderlineInformation", { "fg": s:aquarium_blue, "gui": "underline", "cterm": "underline" })
  call s:h("LspDiagnosticsUnderlineHint", { "fg": s:aquarium_cyan, "gui": "underline", "cterm": "underline" })
  call s:h("LspDiagnosticsVirtualTextError", { "fg": s:aquarium_red, "bg": s:aquarium_bg2  })
  call s:h("LspDiagnosticsVirtualTextWarning", { "fg": s:aquarium_yellow, "bg": s:aquarium_bg2 })
  call s:h("LspDiagnosticsVirtualTextInformation", { "fg": s:aquarium_blue, "bg": s:aquarium_bg2  })
  call s:h("LspDiagnosticsVirtualTextHint", { "fg": s:aquarium_cyan, "bg": s:aquarium_bg2  })
endif

"+-+-+-+-+-+-+-+-+-+-+-+
"+-- Plug-in Support --+
"+-+-+-+-+-+-+-+-+-+-+-+
" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", {"fg": s:aquarium_red })
call s:hi("gitcommitUntrackedFile", {"fg": s:aquarium_cyan })
call s:hi("gitcommitSelectedFile", {"fg": s:aquarium_green })
call s:h("diffAdded", { "fg": s:aquarium_green })
call s:h("diffRemoved", { "fg": s:aquarium_red })

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:hi("IndentGuidesEven", {"bg": s:aquarium_bg2 })
call s:hi("IndentGuidesOdd", {"bg": s:aquarium_bg3 })

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", {"fg": s:aquarium_red })

" neoclide/coc.nvim
call s:h("CocErrorSign", { "fg": s:aquarium_red })
call s:h("CocWarningSign", { "fg": s:aquarium_yellow })
call s:h("CocInfoSign", { "fg": s:aquarium_blue })
call s:h("CocHintSign", { "fg": s:aquarium_cyan })

" neomake/neomake
call s:h("NeomakeErrorSign", { "fg": s:aquarium_red })
call s:h("NeomakeWarningSign", { "fg": s:aquarium_yellow })
call s:h("NeomakeInfoSign", { "fg": s:aquarium_blue })

" airblade/vim-gitgutter
call s:h("GitGutterAdd", { "fg": s:aquarium_green })
call s:h("GitGutterChange", { "fg": s:aquarium_yellow })
call s:h("GitGutterDelete", { "fg": s:aquarium_red })

" plasticboy/vim-markdown (keep consistent with Markdown, above)
call s:h("mkdDelimiter", { "fg": s:aquarium_magenta })
call s:h("mkdHeading", { "fg": s:aquarium_red })
call s:h("mkdLink", { "fg": s:aquarium_blue })
call s:h("mkdURL", { "fg": s:aquarium_cyan, "gui": "underline", "cterm": "underline" })

" prabirshrestha/vim-lsp
call s:h("LspError", { "fg": s:aquarium_red })
call s:h("LspWarning", { "fg": s:aquarium_yellow })
call s:h("LspInformation", { "fg": s:aquarium_blue })
call s:h("LspHint", { "fg": s:aquarium_cyan })

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", { "fg": s:aquarium_red })

" dense-analysis/ale
call s:h("ALEError", { "fg": s:aquarium_red, "gui": "underline", "cterm": "underline" })
call s:h("ALEWarning", { "fg": s:aquarium_yellow, "gui": "underline", "cterm": "underline"})
call s:h("ALEInfo", { "gui": "underline", "cterm": "underline"})

" easymotion/vim-easymotion
call s:h("EasyMotionTarget", { "fg": s:aquarium_red, "gui": "bold", "cterm": "bold" })
call s:h("EasyMotionTarget2First", { "fg": s:aquarium_yellow, "gui": "bold", "cterm": "bold" })
call s:h("EasyMotionTarget2Second", { "fg": s:aquarium_yellow, "gui": "bold", "cterm": "bold" })
call s:h("EasyMotionShade",  { "fg": s:aquarium_bg2 })

" davidhalter/jedi-vim
call s:hi("jediFunction", { "fg": s:aquarium_fg2, "bg":aquarium_black })
call s:hi("jediFat", { "fg": s:aquarium_cyan, "bg":aquarium_black, "cterm": "italic", "gui": "italic" })

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", { "fg": s:aquarium_magenta })
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", { "fg": s:aquarium_cyan })
call s:hi("SignifySignChange", { "fg": s:aquarium_yellow })
call s:hi("SignifySignChangeDelete", { "fg": s:aquarium_red })
call s:hi("SignifySignDelete", { "fg": s:aquarium_yellow })

" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
