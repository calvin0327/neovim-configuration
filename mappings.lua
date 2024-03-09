---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>do"] = { "<cmd> DiffviewOpen <CR>", "Open diff view" },
    ["<leader>ds"] = { "<cmd> DiffviewClose <CR>", "Close diff view" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!
M.telescope = {

  n = {
    -- find
    ["<leader>fp"] = { "<cmd> Telescope projects <CR>", "Find projects" },
    ["<leader>ffp"] = { "<cmd> Telescope file_browser path=~/workspace/ select_buffer=true<CR>", "File browser" },
  },
}

return M
