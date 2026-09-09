local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")

-- header

dashboard.section.header.val = {
  [[                         ▒▓▓███████████▓▒░                         ]], 
  [[                     ▒████████████████████████▒                    ]], 
  [[                 ▓████████▓▒░        ░▒▓████████▓                  ]], 
  [[               ▒██████▓                      ▓██████▒              ]], 
  [[             ▓█████▒                            ▒█████▓            ]], 
  [[           ▒█████                                  █████▓          ]], 
  [[          █████░    ▒▓██▓▓                ▒▓█████▓   █████         ]], 
  [[        ▒████▒      ▓██████    ██▒░░▒▓█████████████   ▒████▒       ]], 
  [[       ▒████░        ░█████    ░███████████▓            ████▓      ]], 
  [[      ▒████           █████       ░▒▒░ ▓███▒             ████▒     ]], 
  [[     ░████            ▓████            ████████████       ████░    ]], 
  [[     ▓███▒            ▓████    ▓▒  ▒▓▓██████████████      ░████    ]], 
  [[    ░████             █████     ██████████▓    ████▓       ████░   ]], 
  [[    ▓███        ▒███▓ ████▓       ░▒  ████░   ▒████░        ███▓   ]], 
  [[    ████        ▒███▓ ███████        ▒███▓    ████▒         ████   ]], 
  [[    ████        ▓███░ ████████▒      ███████████████▓       ▓███   ]], 
  [[    ███▓       ░████  █████████████████████████████████▓    ▓███░  ]], 
  [[    ███▓       ▓███▓  ████▒████████████▓▒             ░█    ▓███   ]], 
  [[    ████      ░████   ████▒ ████▓         ░▒███████         ████   ]], 
  [[    ▓███     ▒████▓   ████░  ███████████████████████▒       ███▓   ]], 
  [[    ░████   ▓█████   ░████░    ▒████████▓▒░    ▒████▒      ████▒   ]], 
  [[     ████░  █████    ▒████      ░███▓          █████      ░████    ]], 
  [[     ░████   ██▒     ▒████       ████          ████▓      ████░    ]], 
  [[      ▒████          ▓████       ████         ▒████▒     ████▒     ]], 
  [[       ▒████░        ▒████       ██████████████████     ████▓      ]], 
  [[        ▒████▒        ████       █████████████████▒   ▒████▓       ]], 
  [[          █████        ▒▓░        ▓██                █████░        ]], 
  [[           ▓█████                                  █████▓          ]], 
  [[             ▓█████▒                            ▒█████▓            ]], 
  [[               ▓██████▓                      ▓██████▓              ]], 
  [[                 ░▓████████▓░          ░▓████████▓░                ]], 
  [[                     ▒████████████████████████▒                    ]], 
  [[                         ░▒▓████████████▓▒░                        ]], 
}

dashboard.section.header.opts.hl = "AlphaHeader"

-- options
dashboard.section.buttons.val = {
   dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
   dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "󱋡  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("t", "󱩾  Find text", ":Telescope live_grep <CR>"),
   dashboard.button("c", "  Configuration", ":e ~/.config/nvim/lua/scripts/alpha-config.lua<CR>"),
   dashboard.button("q", "󰈆  Quit Neovim", ":qa<CR>"),
}
dashboard.section.buttons.opts.hl = "Keyword"

-- footer
local function footer()
  return vim.fn.getcwd()
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Type"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
