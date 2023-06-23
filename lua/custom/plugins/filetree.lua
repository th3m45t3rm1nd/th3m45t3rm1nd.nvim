return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
  on_attach = function(bufnr)
    local api = require('nvim-tree.api')

    api.config.mappings.default_on_attach(bufnr)

    local function opts(desc)
      return {
        desc = "NvimTree " .. desc,
        buffer = bufnr,
        noremap = true,
        silent = true,
        nowait = true,
      }
    end
  end,
}
