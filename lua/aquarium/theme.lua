-- Themes, where colors are applied to everything

-- I hate verbose
local opt = vim.opt
local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- Dependencies n stuff
local colors = require("aquarium.colors")
local config = require ("aquarium.config")

local theme = {}

-- HUGE syntax thingy
theme.load_syntax = function()
    local syntax = {
		Type =			 	{ fg = colors.purple },
		StorageClass =	 	{ fg = colors.cyan   },
		Structure =		 	{ fg = colors.magenta  },
		Constant =		 	{ fg = colors.yellow },
		Character =		 	{ fg = colors.orange },
		Number =		 	{ fg = colors.orange },
		Boolean =		 	{ fg = colors.orange },
		Float =			 	{ fg = colors.orange },
		Statement =		 	{ fg = colors.pink   },
		Label =			 	{ fg = colors.purple },
		Operator =		 	{ fg = colors.cyan   },
		Exception =		 	{ fg = colors.cyan   },
		PreProc =		 	{ fg = colors.magenta },
		Include =		 	{ fg = colors.blue   },
		Define =		 	{ fg = colors.pink   },
		Macro =			 	{ fg = colors.cyan   },
		Typedef =		 	{ fg = colors.red    },
		PreCondit =		 	{ fg = colors.cyan   },
		Special =		 	{ fg = colors.red    },
		SpecialChar =	 	{ fg = colors.pink   },
		Tag =			 	{ fg = colors.red    },
	    Delimiter =		 	{ fg = colors.cyan   },
		SpecialComment = 	{ fg = colors.gray   },
		Debug =			 	{ fg = colors.red    },
		Underlined =	 	{ fg = colors.link, bg = colors.none, style = 'underline' },
		Ignore =		 	{ fg = colors.disabled },
		Error =			 	{ fg = colors.error, bg = colors.none, style = 'bold,underline' },
		Todo =			 	{ fg = colors.yellow, bg = colors.none, style = 'bold,italic' },

    }
end

theme.load_editor = function()
    local editor = {

		NormalFloat =			{ fg = colors.fg, bg = material.float }, -- normal text and background color for floating windows
		FloatBorder =			{ fg = colors.paleblue },
		ColorColumn =			{ fg = colors.none, bg = material.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = colors.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = colors.cursor, bg = material.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = colors.cursor, bg = material.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = colors.blue, bg = material.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = colors.green, bg = material.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = colors.blue, bg = material.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = colors.red, bg = material.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = colors.fg, bg = material.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		ErrorMsg =				{ fg = colors.error }, -- error messages
		Folded =				{ fg = colors.disabled, bg = material.none, style = 'italic' }, -- line used for closed folds
		FoldColumn =			{ fg = colors.blue }, -- 'foldcolumn'
		IncSearch =				{ fg = colors.highlight, bg = material.title, style = 'reverse' }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr =				{ fg = colors.line_numbers }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr =			{ fg = colors.accent }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen =			{ fg = colors.yellow, bg = material.none, style = 'bold' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg =				{ fg = colors.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg =				{ fg = colors.accent }, -- |more-prompt|
		NonText =				{ fg = colors.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Pmenu =					{ fg = colors.text, bg = material.contrast }, -- Popup menu: normal item.
		PmenuSel =				{ fg = colors.accent, bg = material.active, style = 'italic' }, -- Popup menu: selected item.
		PmenuSbar =				{ fg = colors.text, bg = material.contrast }, -- Popup menu: scrollbar.
		PmenuThumb =			{ fg = colors.fg, bg = material.border }, -- Popup menu: Thumb of the scrollbar.
		Question =				{ fg = colors.green }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine =			{ fg = colors.highlight, bg = material.title, style = 'reverse' }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr =				{ fg = colors.highlight, bg = material.title, style = 'reverse' }, -- Line numbers for quickfix lists
		Search =				{ fg = colors.highlight, bg = material.title, style = 'reverse' }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey =			{ fg = colors.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad =				{ fg = colors.red, bg = material.none, style = 'italic,undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap =				{ fg = colors.blue, bg = material.none, style = 'italic,undercurl' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal =			{ fg = colors.cyan, bg = material.none, style = 'italic,undercurl' }, -- ord that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare =				{ fg = colors.purple, bg = material.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine =			{ fg = colors.accent, bg = material.active }, -- status line of current window
		StatusLineNC =  		{ fg = colors.fg, bg = material.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm =		{ fg = colors.fg, bg = material.active }, -- status line of current terminal window
		StatusLineTermNC =		{ fg = colors.text, bg = material.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLineFill =			{ fg = colors.fg }, -- tab pages line, where there are no labels
		TablineSel =			{ fg = colors.bg, bg = material.accent } -- tab pages line, active tab page labelW


    }


end


-- Function from onedark.nvim
-- https://github.com/navarasu/onedark.nvim
function theme.toggle()
    local styles = { "dark", "light", "mish" }
    local index = {}
    for i, j in pairs(styles) do 
        index[j] = i
    end
    g.aqua_style = styles[index[g.aqua_style] + 1] or "dark"
    cmd[[colorscheme aquarium]]
end

return theme
