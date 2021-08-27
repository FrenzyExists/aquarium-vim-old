
local colors = require('aquarium.colors')

local  aquarium = {
    inactive = {
        a = {fg = colors.fg1, bg = colors.bg2, gui = 'bold'},
        b = {fg = colors.fg1, bg = colors.bg2},
        c = {fg = colors.fg1, bg = colors.bg2},
    },
    normal = {
        a = {fg = colors.bg_dim,  bg = colors.green, gui = 'bold'},
        b = {fg = colors.f1, bg = colors.bg_dim},
        c = {fg = colors.fg1, bg = colors.bg1},
    },
    visual = {a = {fg = colors.bg1, bg = colors.purple, gui = 'bold'}},
    replace = {a = {fg = colors.bg1, bg = colors.red, gui = 'bold'}},
    insert = {a = {fg = colors.bg1, bg = colors.blue, gui = 'bold'}},
    command = {a = {fg = colors.bg1, bg = colors.yellow, gui = 'bold'}}
}
return aquarium;
