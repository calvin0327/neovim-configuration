---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "palenight",
  theme_toggle = { "palenight", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode", -- default/vscode/vscode_colored/minimal
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = true,
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = false,
    buttons = {
      { "  Find projects", "Spc f p", "Telescope projects" },
      { "  File browser", "Spc f f p", "Telescope file_browser path=~/ select_buffer=true" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  cheatsheet = { theme = "simple" }, -- simple/grid
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
