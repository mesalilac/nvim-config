local home = os.getenv('HOME')
local db = require('dashboard')

db.custom_header = {
[[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
[[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
[[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
[[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
[[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
[[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

                  -- if not config will use default banner
-- db.custom_center  -- table type and in this table you can set icon,desc,shortcut,action keywords. desc must be exist and type is string
--                   -- icon type is nil or string
--                   -- icon_hl table type { fg ,bg} see `:h vim.api.nvim_set_hl` opts
--                   -- shortcut type is nil or string also like icon
--                   -- action type can be string or function or nil.
--                   -- if you don't need any one of icon shortcut action ,you can ignore it.
-- db.custom_footer  -- type can be nil,table or function(must be return table in function)
-- db.preview_file_Path    -- string or function type that mean in function you can dynamic generate height width
-- db.preview_file_height  -- number type
-- db.preview_file_width   -- number type
-- db.preview_command      -- string type (can be ueberzug which only work in linux)
-- db.confirm_key          -- string type key that do confirm in center select
-- db.hide_statusline      -- boolean default is true.it will hide statusline in dashboard buffer and auto open in other buffer
-- db.hide_tabline         -- boolean default is true.it will hide tabline in dashboard buffer and auto open in other buffer
-- db.hide_winbar          -- boolean default is true.it will hide the winbar in dashboard buffer and auto open in other buffer
-- db.session_directory    -- string type the directory to store the session file
-- db.header_pad           -- number type default is 1
-- db.center_pad           -- number type default is 1
-- db.footer_pad           -- number type default is 1

-- example of db.custom_center for new lua coder,the value of nil mean if you
--db.preview_command = 'ueberzug'

db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
    {icon = '  ',
    desc = 'Recently latest session                  ',
    shortcut = 'SPC s l',
    action ='SessionLoad'},
    {icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'DashboardFindHistory',
    shortcut = 'SPC f h'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'},
    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},
    {icon = '  ',
    desc = 'Open Personal dotfiles                  ',
    action = 'Telescope find_files hidden=true path=' .. home ..'/.dotfiles',
    shortcut = 'SPC f d'},
}
