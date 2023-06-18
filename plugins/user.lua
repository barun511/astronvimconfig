return {
  -- Leaving this here as an example of a plugin for now.
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User Astrofile",
  },
}
