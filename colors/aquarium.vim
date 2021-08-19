
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
let s:aquarium_vim_version="0.3.0"

set background=dark

"+
"+ Color Reference
"+

" +------------------------+
" |  Color Name  |   Hex   |
" |--------------+--------------------+---------|
" | Black        | #282c34 |
" |--------------+--------------------+---------|
" | Foreground   | #7c7c93 |
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

"+-------------------+
"+ Comments and Such +
"+-------------------+
call s:hi("Comment", s:aquarium_bg3, "", "", "", "italic", "")
call s:hi("SpecialComment", s:aquarium_black, "", "", "", "italic", "")

"+---------------------+
"+ Rust Lang Highlight +
"+---------------------+
call s:hi("rustAttribute", s:aquarium_blue, "", "", "", "", "")
call s:hi("rustEnum", s:aquarium_yellow, "", "", "", "bold", "")
call s:hi("rustMacro", s:aquarium_cyan, "", "", "", "bold", "")
call s:hi("rustModPath", s:aquarium_yellow, "", "", "", "", "")
call s:hi("rustPanic", s:aquarium_red, "", "", "", "bold", "")
call s:hi("rustTrait", s:aquarium_yellow, "", "", "", "italic", "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

"+---------------------+
"+ Ruby Lang Highlight +
"+---------------------+
call s:hi("rubyBlockParameter", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyBlockParameterList", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyClass", s:aquarium_yellow, "", "", "", "", "")
call s:hi("rubyConstant", s:aquarium_yellow, "", "", "", "", "")
call s:hi("rubyControl", s:aquarium_yellow, "", "", "", "", "")
call s:hi("rubyEscape", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyFunction", s:aquarium_blue, "", "", "", "", "")
call s:hi("rubyGlobalVariable", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyInclude", s:aquarium_blue, "", "", "", "", "")
call s:hi("rubyIncluderubyGlobalVariable", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyInstanceVariable", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyInterpolation", s:aquarium_cyan, "", "", "", "", "")
call s:hi("rubyInterpolationDelimiter", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyInterpolationDelimiter", s:aquarium_red, "", "", "", "", "")
call s:hi("rubyRegexp", s:aquarium_cyan, "", "", "", "", "")
call s:hi("rubyRegexpDelimiter", s:aquarium_cyan, "", "", "", "", "")
call s:hi("rubyStringDelimiter", s:aquarium_green, "", "", "", "", "")
call s:hi("rubySymbol", s:aquarium_cyan, "", "", "", "", "")

"+----------------------------+
"+ Typescript Lang Hightlight +
"+----------------------------+
call s:hi("typescriptReserved", s:aquarium_yellow, "", "", "", "", "")
call s:hi("typescriptEndColons", s:aquarium_fg2, "", "", "", "", "")
call s:hi("typescriptBraces", s:aquarium_fg2, "", "", "", "", "")
call s:hi("typeScriptLabel", s:aquarium_cyan, "", "", "", "", "" )
call s:hi("typeScriptFuncKeyword", s:aquarium_red, "", "", "", "", "" )
call s:hi("typeScriptIdentifier", s:aquarium_cyan, "", "", "", "", "" )
call s:hi("typeScriptDOMObjects", s:aquarium_green, "", "", "", "", "")
call s:hi("typeScriptAjaxMethods", s:aquarium_yellow, "", "", "", "", "")
call s:hi("typeScriptGlobalObject", s:aquarium_yellow, "", "", "", "", "")
call s:hi("typeScriptInterpolationDelimiter", s:aquarium_magenta, "", "", "", "", "")
call s:hi("typeScriptNull", s:aquarium_magenta, "", "", "", "", "")
call s:hi("typeScriptNull", s:aquarium_magenta, "", "", "", "", "")
call s:hi("typeScriptParens", s:aquarium_red, "", "", "", "", "")
hi! link typeScriptOpSymbols Boolean
hi! link typeScriptHtmlElemProperties Special
hi! link typeScriptLogicSymbols Boolean
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle

"+-------------------+
"+ Go Lang Highlight +
"+-------------------+
call s:hi("goDeclaration", s:aquarium_magenta, "", "", "", "", "")
call s:hi("goBuiltins", s:aquarium_cyan, "", "", "", "", "")
call s:hi("goFunctionCall", s:aquarium_blue, "", "", "", "", "")
call s:hi("goVarDefs", s:aquarium_red, "", "", "", "", "")
call s:hi("goVarAssign", s:aquarium_red, "", "", "", "", "")
call s:hi("goVar", s:aquarium_magenta, "", "", "", "", "")
call s:hi("goConst", s:aquarium_magenta, "", "", "", "", "")
call s:hi("goType", s:aquarium_yellow, "", "", "", "", "")
call s:hi("goTypeName", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("goDeclType", s:aquarium_cyan, "", "", "", "", "" )
call s:hi("goTypeDecl", s:aquarium_magenta, "", "", "", "", "" )

"+---------------------+
"+ HTML Lang Highlight +
"+---------------------+
call s:hi("htmlArg", s:aquarium_yellow, "", "", "", "", "")
call s:hi("htmlBold", s:aquarium_yellow, "", "", "", "bold", "")
call s:hi("htmlEndTag", s:aquarium_fg2, "", "", "", "", "")
call s:hi("htmlH1", s:aquarium_red, "", "", "", "italic", "")
call s:hi("htmlH2", s:aquarium_red, "", "", "", "italic", "")
call s:hi("htmlH3", s:aquarium_red, "", "", "", "italic", "")
call s:hi("htmlH4", s:aquarium_red, "", "", "", "italic", "")
call s:hi("htmlH5", s:aquarium_red, "", "", "", "italic", "")
call s:hi("htmlH6", s:aquarium_red, "", "", "", "italic", "")
call s:hi("htmlItalic", s:aquarium_magenta, "", "", "", "italic", "")
call s:hi("htmlLink", s:aquarium_cyan, "", "", "", "undercurl", "")
call s:hi("htmlSpecialChar", s:aquarium_yellow, "", "", "", "", "")
call s:hi("htmlSpecialTagName", s:aquarium_red, "", "", "", "", "")
call s:hi("htmlTag", s:aquarium_fg2, "", "", "", "", "")
call s:hi("htmlTagN", s:aquarium_red, "", "", "", "", "")
call s:hi("htmlTagName", s:aquarium_red, "", "", "", "", "")
call s:hi("htmlTitle", s:aquarium_fg2, "", "", "", "", "")

"+----------------------------+
"+ JavaScript Lang Hightlight +
"+----------------------------+
call s:hi("javaScriptBraces", s:aquarium_fg2, "", "", "", "", "")
call s:hi("javaScriptFunction", s:aquarium_yellow, "", "", "", "", "")
call s:hi("javaScriptIdentifier", s:aquarium_yellow, "", "", "", "", "")
call s:hi("javaScriptNull", s:aquarium_red, "", "", "", "", "")
call s:hi("javaScriptNumber", s:aquarium_blue, "", "", "", "", "")
call s:hi("javaScriptRequire", s:aquarium_cyan, "", "", "", "", "")
call s:hi("javaScriptReserved", s:aquarium_magenta, "", "", "", "", "" )
" https://github.com/pangloss/vim-javascript
call s:hi("jsArrowFunction", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsClassKeyword", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsClassMethodType", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsDocParam", s:aquarium_blue, "", "", "", "", "" )
call s:hi("jsDocTags", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsExport", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsExportDefault", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsExtendsKeyword", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsFrom", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsFuncCall", s:aquarium_blue, "", "", "", "", "" )
call s:hi("jsFunction", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsGenerator", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("jsGlobalObjects", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("jsImport", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsModuleAs", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsModuleWords", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsModules", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsNull", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("jsOperator", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsStorageClass", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("jsSuper", s:aquarium_red, "", "", "", "", "" )
call s:hi("jsTemplateBraces", s:aquarium_red, "", "", "", "", "" )
call s:hi("jsTemplateVar", s:aquarium_green, "", "", "", "", "" )
call s:hi("jsThis", s:aquarium_red, "", "", "", "", "" )
call s:hi("jsUndefined", s:aquarium_yellow, "", "", "", "", "" )

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- XML Lang Highlight -+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("xmlAttrib", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("xmlEndTag", s:aquarium_red, "", "", "", "", "" )
call s:hi("xmlTag", s:aquarium_red, "", "", "", "", "" )
call s:hi("xmlTagName", s:aquarium_red, "", "", "", "", "" )

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- TeX Lang Highlight -+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("texStatement", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("texSubscripts", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("texSuperscripts", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("texTodo", s:aquarium_bg3, "", "", "", "", "" )
call s:hi("texBeginEnd", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("texBeginEndName", s:aquarium_blue, "", "", "", "", "" )
call s:hi("texMathMatcher", s:aquarium_blue, "", "", "", "", "" )
call s:hi("texMathDelim", s:aquarium_blue, "", "", "", "", "" )
call s:hi("texDelimiter", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("texSpecialChar", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("texCite", s:aquarium_blue, "", "", "", "", "" )
call s:hi("texRefZone", s:aquarium_blue, "", "", "", "", "" )

"+--------------------+
"+ CSS Lang Highlight +
"+--------------------+
call s:hi("cssAttrComma", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssAttributeSelector", s:aquarium_green, "", "", "", "", "" )
call s:hi("cssBraces", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("cssClassName", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("cssClassNameDot", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("cssDefinition", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssFontAttr", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("cssFontDescriptor", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssFunctionName", s:aquarium_blue, "", "", "", "", "" )
call s:hi("cssIdentifier", s:aquarium_blue, "", "", "", "", "" )
call s:hi("cssImportant", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssInclude", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("cssIncludeKeyword", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssMediaType", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("cssProp", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("cssPseudoClassId", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("cssSelectorOp", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssSelectorOp2", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("cssTagName", s:aquarium_red, "", "", "", "", "" )


hi! link cssColor GruvboxBlue
hi! link cssSelectorOp GruvboxBlue
hi! link cssSelectorOp2 GruvboxBlue
hi! link cssVendor GruvboxFg1

hi! link cssTextProp GruvboxAqua
hi! link cssAnimationProp GruvboxAqua
hi! link cssUIProp GruvboxYellow
hi! link cssTransformProp GruvboxAqua
hi! link cssTransitionProp GruvboxAqua
hi! link cssPrintProp GruvboxAqua
hi! link cssPositioningProp GruvboxYellow
hi! link cssBoxProp GruvboxAqua
hi! link cssFontDescriptorProp GruvboxAqua
hi! link cssFlexibleBoxProp GruvboxAqua
hi! link cssBorderOutlineProp GruvboxAqua
hi! link cssBackgroundProp GruvboxAqua
hi! link cssMarginProp GruvboxAqua
hi! link cssListProp GruvboxAqua
hi! link cssTableProp GruvboxAqua
hi! link cssFontProp GruvboxAqua
hi! link cssPaddingProp GruvboxAqua
hi! link cssDimensionProp GruvboxAqua
hi! link cssRenderProp GruvboxAqua
hi! link cssColorProp GruvboxAqua
hi! link cssGeneratedContentProp GruvboxAqua


"+--------------------+
" Perl Lang Highlight +
"+--------------------+
call s:hi("perlFiledescRead", s:aquarium_green, "", "", "", "", "" )
call s:hi("perlFunction", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("perlMatchStartEnd", s:aquarium_blue, "", "", "", "", "" )
call s:hi("perlMethod", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("perlPOD", s:aquarium_bg2, "", "", "", "", "" )
call s:hi("perlSharpBang", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("perlSpecialString", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("perlStatementFiledesc", s:aquarium_red, "", "", "", "", "" )
call s:hi("perlStatementFlow", s:aquarium_red, "", "", "", "", "" )
call s:hi("perlStatementInclude", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("perlStatementScalar", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("perlStatementStorage", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("perlSubName", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("perlVarPlain", s:aquarium_blue, "", "", "", "", "" )

"+----------------------+
"+ PHP Lang Hightlight
"+----------------------+
call s:hi("phpVarSelector", s:aquarium_red, "", "", "", "", "" )
call s:hi("phpOperator", s:aquarium_fg2, "", "", "", "", "")
call s:hi("phpParent", s:aquarium_fg2, "", "", "", "", "")
call s:hi("phpMemberSelector", s:aquarium_fg2, "", "", "", "", "")
call s:hi("phpType", s:aquarium_magenta, "", "", "", "", "")
call s:hi("phpKeyword", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("phpClass", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("phpUseClass", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("phpUseAlias", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("phpInclude", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("phpClassExtends", s:aquarium_green, "", "", "", "", "" )
call s:hi("phpDocTags", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("phpFunction", s:aquarium_blue, "", "", "", "", "" )
call s:hi("phpFunctions", s:aquarium_cyan, "", "", "", "", "" )
call s:hi("phpMethodsVar", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("phpMagicConstants", s:aquarium_yellow, "", "", "", "", "" )
call s:hi("phpSuperglobals", s:aquarium_red, "", "", "", "", "" )
call s:hi("phpConstants", s:aquarium_yellow, "", "", "", "", "" )

"+-------------------------+
"+ Markdown Lang Highlight +
"+-------------------------+
call s:hi("markdownBlockquote", s:aquarium_fg2, "", "", "", "", "" )
call s:hi("markdownBold", s:aquarium_yellow, "", "", "", "bold", "")
call s:hi("markdownCode", s:aquarium_green, "", "", "", "", "")
call s:hi("markdownCodeBlock", s:aquarium_green, "", "", "", "", "")
call s:hi("markdownCodeDelimiter", s:aquarium_green, "", "", "", "", "")
call s:hi("markdownH1", s:aquarium_red, "", "", "", "", "")
call s:hi("markdownH2", s:aquarium_red, "", "", "", "", "" )
call s:hi("markdownH3", s:aquarium_red, "", "", "", "", "" )
call s:hi("markdownH4", s:aquarium_red, "", "", "", "", "" )
call s:hi("markdownH5", s:aquarium_red, "", "", "", "", "" )
call s:hi("markdownH6", s:aquarium_red, "", "", "", "", "" )
call s:hi("markdownHeadingDelimiter", s:aquarium_red, "", "", "", "", "")
call s:hi("markdownHeadingRule", s:aquarium_fg2, "", "", "", "", "")
call s:hi("markdownId", s:aquarium_magenta, "", "", "", "", "")
call s:hi("markdownIdDeclaration", s:aquarium_blue, "", "", "", "", "")
call s:hi("markdownIdDelimiter", s:aquarium_magenta, "", "", "", "", "")
call s:hi("markdownItalic", s:aquarium_magenta, "", "", "", "italic", "")
call s:hi("markdownLinkDelimiter", s:aquarium_magenta, "", "", "", "", "")
call s:hi("markdownLinkText", s:aquarium_blue, "", "", "", "", "")
call s:hi("markdownListMarker", s:aquarium_red, "", "", "", "", "")
call s:hi("markdownOrderedListMarker", s:aquarium_red, "", "", "", "", "")
call s:hi("markdownRule", s:aquarium_fg2, "", "", "", "", "")
call s:hi("markdownUrl", s:aquarium_cyan, "", "", "", "undercurl", "")

"+------------------------+
"+ Haskel Lang Hightlight +
"+------------------------+
call s:hi("haskellType", s:aquarium_yellow, "", "", "", "", "")
call s:hi("haskellOperators", s:aquarium_cyan, "", "", "", "", "")
call s:hi("haskellNumber", s:aquarium_magenta, "", "", "", "", "")
call s:hi("haskellPragma", s:aquarium_magenta, "", "", "", "", "")

"+----------------------+
"+ Java Lang Hightlight +
"+----------------------+
" > Java motherfucker! Do you speak it?!?!
call s:hi("javaAnnotation", s:aquarium_cyan, "", "", "", "italic", "")
call s:hi("javaDocTags", s:aquarium_yellow, "", "", "", "italic", "")
call s:hi("javaCommentTitle", s:aquarium_bg3, "", "", "", "italic", "")
call s:hi("javaParen", s:aquarium_bg3, "", "", "", "italic", "")
call s:hi("javaParen1", s:aquarium_green, "", "", "", "", "")
call s:hi("javaParen2", s:aquarium_green, "", "", "", "", "")
call s:hi("javaParen3", s:aquarium_green, "", "", "", "", "")
call s:hi("javaParen4", s:aquarium_green, "", "", "", "", "")
call s:hi("javaParen5", s:aquarium_green, "", "", "", "", "")
call s:hi("javaVarArg", s:aquarium_cyan, "", "", "", "", "")

"+---------------------------+
"+ Vimscript Lang Hightlight +
"+---------------------------+
call s:hi("vimCommentTitle", s:aquarium_blue, "", "", "", "italic", "")
call s:hi("vimBracket", s:aquarium_magenta, "", "", "", "", "")
call s:hi("vimMapModKey", s:aquarium_blue, "", "", "", "italic", "")
call s:hi("vimFuncSID", s:aquarium_blue, "", "", "", "italic", "")
call s:hi("vimSetSep", s:aquarium_cyan, "", "", "", "", "")
call s:hi("vimSep", s:aquarium_red, "", "", "", "", "")
call s:hi("vimContinue", s:aquarium_blue, "", "", "", "", "")
call s:hi("vimNotation", s:aquarium_yellow, "", "", "", "", "")

"+----------------------+
"+ JSON Lang Hightlight +
"+----------------------+
call s:hi("jsonCommentError", s:aquarium_fg2, "", "", "", "", "")
call s:hi("jsonKeyword", s:aquarium_red, "", "", "", "", "")
call s:hi("jsonBoolean", s:aquarium_yellow, "", "", "", "", "")
call s:hi("jsonNumber", s:aquarium_yellow, "", "", "", "", "")
call s:hi("jsonQuote", s:aquarium_fg2, "", "", "", "", "")
call s:hi("jsonMissingCommaError", s:aquarium_red, "", "", "", "reverse", "")
call s:hi("jsonNoQuotesError", s:aquarium_red, "", "", "", "reverse", "")
call s:hi("jsonNumError", s:aquarium_red, "", "", "", "reverse", "")
call s:hi("jsonString", s:aquarium_green, "", "", "", "", "")
call s:hi("jsonStringSQError", s:aquarium_red, "", "", "", "reverse", "")
call s:hi("jsonSemicolonError", s:aquarium_red, "", "", "", "reverse", "")

"+------------------+
"+ C Lang Highlight +
"+------------------+
call s:hi("cIncluded", s:aquarium_yellow, "", "", "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

"+--------------------+
"+ CS Lang Hightlight +
"+--------------------+
hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

"+--------------------+
"+ CS Lang Hightlight +
"+--------------------+
call s:hi("cssAttributeSelector", s:aquarium_yellow, "", "", "", "", "")
call s:hi("cssDefinition", s:aquarium_yellow, "", "", "", "NONE", "")
call s:hi("cssIdentifier", s:aquarium_yellow, "", "", "", "underline", "")
call s:hi("cssStringQ", s:aquarium_yellow, "", "", "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

"+------------------+
"+ Git Highlighting +
"+------------------+
call s:hi("gitcommitComment", s:aquarium_fg3, "", "", "", "", "")
call s:hi("gitcommitUnmerged", s:aquarium_green, "", "", "", "", "")
call s:hi("gitcommitOnBranch", s:aquarium_cyan, "", "", "", "", "")
call s:hi("gitcommitBranch", s:aquarium_magenta, "", "", "", "", "")
call s:hi("gitcommitDiscardedType", s:aquarium_red, "", "", "", "", "")
call s:hi("gitcommitSelectedType", s:aquarium_green, "", "", "", "", "")
call s:hi("gitcommitHeader", s:aquarium_green, "", "", "", "", "")
call s:hi("gitcommitUntrackedFile", s:aquarium_cyan, "", "", "", "", "")
call s:hi("gitcommitDiscardedFile", s:aquarium_red, "", "", "", "", "")
call s:hi("gitcommitSelectedFile", s:aquarium_green, "", "", "", "", "")
call s:hi("gitcommitUnmergedFile", s:aquarium_yellow, "", "", "", "", "")
call s:hi("gitcommitFile", s:aquarium_magenta, "", "", "", "", "")
call s:hi("gitcommitSummary", s:aquarium_fg2, "", "", "", "", "")
call s:hi("gitcommitOverflow", s:aquarium_red, "", "", "", "", "")
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

"+-+-+-+-+-+-+-+-+-+-+-+
"+-- Diff Highlight ---+
"+-+-+-+-+-+-+-+-+-+-+-+
if &diff
  " Don't change the background color in diff mode
  call s:hi("CursorLine", "", "", "", "", "underline", "") " the screen line that the cursor is in when 'cursorline' is set
else
  call s:hi("CursorLine", "", s:aquarium_bg2, "", "", "", "" ) " the screen line that the cursor is in when 'cursorline' is set
endif
call s:hi("Directory", s:aquarium_blue, "", "", "", "", "") " directory names (and other special names in listings)
call s:hi("DiffAdd", s:aquarium_green, s:aquarium_black, "", "", "", "") " diff mode: Added line
call s:hi("DiffChange", s:aquarium_yellow, "", "", "", "undercurl", "") " diff mode: Changed line
call s:hi("DiffDelete", s:aquarium_red, s:aquarium_black, "", "", "", "") " diff mode: Deleted line
call s:hi("DiffText", s:aquarium_yellow, s:aquarium_black, "", "", "", "") " diff mode: Changed text within a changed line

"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- Spell Check Highlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
" Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
call s:hi("SpellBad", s:aquarium_red, s:aquarium_bg2, "", "", "undercurl", "")
" Word that should start with a capital. This will be combined with the highlighting used otherwise.
call s:hi("SpellCap", s:aquarium_yellow, s:aquarium_bg2, "", "", "undercurl", "")
" Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
call s:hi("SpellLocal", s:aquarium_cyan, s:aquarium_bg2, "", "", "undercurl", "")
" Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
call s:hi("SpellRare", s:aquarium_blue, s:aquarium_bg2, "", "", "undercurl", "")

"+-+-+-+-+-+-+-+-+-+-+-+
" Visual Something
"+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("Visual", "reverse", s:aquarium_bg2, "", "", "", "")
call s:hi("VisualNOS", "reverse", s:aquarium_bg2, "", "", "", "")

"+-+-+-+-+-+-+-+-+-+-+
"+----- Editor ------+
"+-+-+-+-+-+-+-+-+-+-+
call s:hi("SignColumn", "", s:aquarium_bg1, "NONE", "", "", "")
call s:hi("ColorColumn", "", s:aquarium_bg2, "NONE", s:aquarium1_term, "", "")
call s:hi("CursorColumn", s:aquarium_cyan, "", "NONE", "", "", "")
call s:hi("Cursor", s:aquarium_bg1, s:aquarium_bg2, "", "NONE", "", "")
call s:hi("CursorLine", "", "", "NONE", "", "NONE", "") " Changes the color focused line where the cursor is
call s:hi("CursorLineNr", s:aquarium_cyan, s:aquarium_bg3, "NONE", s:aquarium1_term, "NONE", "") " Changes the color focused column number where the cursor is
call s:hi("Error", s:aquarium_red, s:aquarium_bg2, "", "", "italic", "")
call s:hi("Normal", s:aquarium_fg1, s:aquarium_bg1, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:aquarium_fg2, s:aquarium_bg2, "", "", "", "")
call s:hi("PmenuSbar",  s:aquarium_fg2, s:aquarium_bg2, "", "", "", "")
call s:hi("PmenuSel", s:aquarium_cyan, s:aquarium_bg2, "", "", "", "")
call s:hi("PmenuThumb", s:aquarium_cyan, s:aquarium_bg2, "", "", "", "")
call s:hi("SpecialKey", s:aquarium_black, "", "", "", "", "")
call s:hi("Search", s:aquarium_yellow, s:aquarium_black, "", "", "", "") " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
call s:hi("CursorIM", s:aquarium_bg1, s:aquarium_fg1, "", "NONE", "", "") " like Cursor, but used when in IME mode
call s:hi("Conceal", "", s:aquarium_bg3, "", "NONE", "", "") " placeholder characters substituted for concealed text (see 'conceallevel')
call s:hi("iCursor", s:aquarium_bg3, s:aquarium_fg1, "", "NONE", "", "")
call s:hi("LineNr", s:aquarium_bg3, s:aquarium_bg1, "", "", "bold", "") " The Number Columns
call s:hi("MatchParen", s:aquarium_cyan, s:aquarium_black, "", "", "", "")
call s:hi("NonText", s:aquarium_fg2, s:aquarium_black, "", "", "", "")
call s:hi("Special", s:aquarium_yellow, "", "", "", "italic", "")

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+--- Window Highlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("VertSplit", s:aquarium_bg2, s:aquarium_bg1, "", "NONE", "bold", "")
call s:hi("StatusLine", s:aquarium_bg1, s:aquarium_bg1, "", "", "", "") " status line of current window
call s:hi("StatusLineNC", s:aquarium_bg1, "", "", "", "", "") "status lines of not-current windows Note: if this is equal to 'StatusLine' Vim will use '^^^' in the status line of the current window.
call s:hi("StatusLineTerm", s:aquarium_fg1, s:aquarium_bg1, "", "", "", "" ) " status line of current :terminal window
call s:hi("StatusLineTermNC", s:aquarium_bg2, "", "", "", "", "") " status line of non-current :terminal window

"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"+-- Lang Specifics aka Fallbacks ---+
"+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("Todo", s:aquarium_magenta, s:aquarium_black, "", "", "bold", "") " anything that needs extra attention; mostly the keywords TODO FIXME and XXX
call s:hi("Boolean", s:aquarium_cyan, "", "", "", "", "") " a boolean constant: TRUE, false
call s:hi("Type", s:aquarium_yellow, "", "", "", "italic", "" ) " int, long, char, etc.
call s:hi("Function", s:aquarium_cyan, "", "", "", "italic", "") " a floating point constant: 2.3e10
call s:hi("Include", s:aquarium_blue, "", "", "", "", "" ) " preprocessor #include
call s:hi("Statement", s:aquarium_blue, "", "", "", "", "" ) " any statement
call s:hi("Conditional", s:aquarium_cyan, "", "", "", "", "") " if, then, else, endif, switch, etc.
call s:hi("Repeat", s:aquarium_yellow, "", "", "", "", "") " for, do, while, etc.
call s:hi("Label", s:aquarium_yellow,"", "", "", "", "") " case, default, etc.
call s:hi("String", s:aquarium_green, "", "", "", "", "") " a string constant: 'this is a string'
call s:hi("Character", s:aquarium_green, "", "", "", "", "") " a character constant: 'c', '\n'
call s:hi("StorageClass", s:aquarium_red, "", "", "", "", "") " static, register, volatile, etc.
call s:hi("Operator", s:aquarium_red, "", "", "", "bold", "") " sizeof, '+', '*', etc.
call s:hi("Number", s:aquarium_red, "", "", "", "", "") " a number constant: 234, 0xff
call s:hi("Float", s:aquarium_red, "", "", "", "", "") " a floating point constant: 2.3e10
call s:hi("Structure", s:aquarium_yellow, "", "", "", "", "" ) " struct, union, enum, etc.
call s:hi("Typedef", s:aquarium_yellow, "", "", "", "", "") " A typedef
call s:hi("Special", s:aquarium_blue, "", "", "", "", "") " any special symbol
call s:hi("SpecialChar", s:aquarium_bg2, "", "", "", "", "") " special character in a constant
call s:hi("Tag", s:aquarium_yellow, "", "", "", "", "") " you can use CTRL-] on this
call s:hi("Delimiter", s:aquarium_blue, "", "", "", "bold", "") " character that needs attention, parenthesis for example
call s:hi("Macro", s:aquarium_magenta, "", "", "", "", "") " same as Define
call s:hi("Exception", s:aquarium_magenta, "", "", "", "", "") " try, catch, throw
call s:hi("Delimiter", "", "", "", "", "", "") " character that needs attention
call s:hi("Keyword", s:aquarium_red, "", "", "", "italic", "") " any other keyword
call s:hi("Debug", "", "", "", "", "", "") " debugging statements
call s:hi("Underlined", "", "", "", "", "underline", "") " text that stands out, HTML links
call s:hi("Identifier", s:aquarium_red, "", "", "", "", "") " any variable name
call s:hi("Constant", s:aquarium_magenta, "", "", "", "italic", "")
call s:hi("WildMenu", s:aquarium_blue, s:aquarium_bg2, "", "", "", "")
hi! link PreCondit PreProc
"-----------------------------------------------------------------------------------------

"+-+-+-+-+-+-+-+-+-+-+-+
"+--- Prompt/Status ---+
"+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("EndOfBuffer", s:aquarium_bg1, "", "", "", "", "")
call s:hi("ErrorMsg", s:aquarium_red, s:aquarium_bg1, "", "", "italic", "")
call s:hi("ModeMsg", s:aquarium_fg1, "", "", "", "", "")
call s:hi("MoreMsg", s:aquarium_cyan, s:aquarium_black, "", "", "", "")
call s:hi("Question", s:aquarium_fg2, "", "NONE", "", "", "")

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+--- Cmake Hightlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("cmakeGeneratorExpression", s:aquarium_blue, "", "", "", "italic", "")

"+-+-+-+-+-+-+-+-+-+-+-+
"+- Neovim Support -+
"+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("healthError", s:aquarium_red, s:aquarium_bg2, "", "", "", "")
call s:hi("healthSuccess", s:aquarium_green, s:aquarium_bg2, "", "", "", "")
call s:hi("healthWarning", s:aquarium_yellow, s:aquarium_bg2, "", "", "", "")

"+-+-+-+-+-+-+-+-+-+-+-+-+
"+--- Ascii Hightlight --+
"+-+-+-+-+-+-+-+-+-+-+-+-+
call s:hi("asciidocAttributeEntry", s:aquarium_blue, "", "", "", "", "")
call s:hi("asciidocAttributeList", s:aquarium_blue, "", "", "", "", "")
call s:hi("asciidocAttributeRef", s:aquarium_blue, "", "", "", "", "")
call s:hi("asciidocHLabel", s:aquarium_magenta, "", "", "", "", "" )
call s:hi("asciidocListingBlock", s:aquarium_yellow, "", "", "", "", "")
call s:hi("asciidocMacroAttributes", s:aquarium_cyan, "", "", "", "", "")
call s:hi("asciidocOneLineTitle", s:aquarium_cyan, "", "", "", "", "")
call s:hi("asciidocPassthroughBlock", s:aquarium_magenta, "", "", "", "", "")
call s:hi("asciidocQuotedMonospaced", s:aquarium_yellow, "", "", "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:aquarium_yellow, "", "", "", "", "")
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
call s:hi("awkCharClass", s:aquarium_yellow, "", "", "", "italic", "")
call s:hi("awkPatterns", s:aquarium_cyan,  "", "", "", "italic", "")
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

"+-+-+-+-+-+-+-+-+-+-+-+
"+-- Plug-in Support --+
"+-+-+-+-+-+-+-+-+-+-+-+
" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:aquarium_red, "", "", "", "italic", "")

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:aquarium_red, "", "", "", "italic", "")

" JEDI
" > davidhalter/jedi-vim
call s:hi("jediFunction", s:aquarium_fg2, s:aquarium_black, "", "", "italic", "")
call s:hi("jediFat", s:aquarium_cyan, s:aquarium_black, "", "", "italic", "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:aquarium_magenta, "", "", "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

hi! link NERDTreeDir GruvboxAqua
hi! link NERDTreeDirSlash GruvboxAqua

hi! link NERDTreeOpenable GruvboxOrange
hi! link NERDTreeClosable GruvboxOrange

hi! link NERDTreeFile GruvboxFg1
hi! link NERDTreeExecFile GruvboxYellow

hi! link NERDTreeUp GruvboxGray
hi! link NERDTreeCWD GruvboxGreen
hi! link NERDTreeHelp GruvboxFg1

hi! link NERDTreeToggleOn GruvboxGreen
hi! link NERDTreeToggleOff GruvboxRed

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:aquarium_red, "", "", "", "", "" )
call s:hi("gitcommitUntrackedFile", s:aquarium_cyan, "", "", "", "", "" )
call s:hi("gitcommitSelectedFile", s:aquarium_green, "", "", "", "", "" )
call s:hi("diffAdded", s:aquarium_green, "", "", "", "", "" )
call s:hi("diffRemoved", s:aquarium_red, "", "", "", "", "" )

" Rainbow Parentheses
" > Science XD
if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', '#cddbf9'], ['magenta', '#f6bbe7'],
      \ ['red',  '#ebb9b9'], ['yellow',     '#ebe3b9']
    \ ]
endif

let g:rainbow_guifgs = [ '#ebe3b9', '#ebb9b9', '#f6bbe7', '#cddbf9' ]
let g:rainbow_ctermfgs = [ 'yellow', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

" Vim Clap
" > liuchengxu/vim-clap
let s:save_cpo = &cpoptions
set cpoptions&vim

let s:palette = {}

let s:palette.display = { 'ctermbg': '0', 'guibg': 'aquarium_bg2' }

" Let ClapInput, ClapSpinner and ClapSearchText use the same background.
let s:bg0 = { 'ctermbg': '60', 'guibg': s:aquarium_bg1 }
let s:palette.input = s:bg0
let s:palette.indicator = extend({ 'ctermfg': '238', 'guifg': s:aquarium_bg2 }, s:bg0)
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg': s:aquarium_yellow, 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '4', 'guifg': s:aquarium_blue, 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

let s:palette.preview = { 'ctermbg': '238', 'guibg': s:aquarium_bg1 }

let s:palette.selected = { 'ctermfg': '81', 'guifg': s:aquarium_cyan, 'cterm': 'bold,underline', 'gui': 'bold,underline' }
let s:palette.current_selection = { 'ctermbg': '236', 'guibg': s:aquarium_bg2, 'cterm': 'bold', 'gui': 'bold' }

let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': s:aquarium_yellow }
let s:palette.current_selection_sign = s:palette.selected_sign

hi ClapShadow guibg=#3b3b4d


let g:clap_fuzzy_match_hl_groups = [
  \ ['75', s:aquarium_yellow],
\ ]

let g:clap#themes#aquarium#palette = s:palette

let &cpoptions = s:save_cpo
unlet s:save_cpo

let g:clap_theme = 'aquarium'
