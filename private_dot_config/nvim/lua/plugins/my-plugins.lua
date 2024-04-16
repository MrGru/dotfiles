return {

  -- color theme
  { "sainnhe/sonokai" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },

  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup()
    end,
  },

  {
    "folke/which-key.nvim",
    opts = function()
      local wk = require("which-key")
      wk.register({
        ["<leader>f"] = { name = "+file" },
        ["<leader>ff"] = { "<cmd>Telescope find_finds<cr>", "Find File" },
        ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
      })
    end,
  },
}
