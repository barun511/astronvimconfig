return {
  -- Leaving this here as an example of a plugin for now.
  lsp = {
    setup_handlers = {
      -- add custom handler
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
    },
  },
  {
    "simrat39/rust-tools.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer" },
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User Astrofile",
  },
}
