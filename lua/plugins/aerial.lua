return {
  'stevearc/aerial.nvim',
  opts = {
    backends = {"treesitter", "lsp"},
    layout = {
      --max_width = {40, 0.25},
      --width = nil,
      min_width = 20,
      default_direction = "prefer_right",
      placement = "window",
      resize_to_content = true,
    },
    attach_mode = "window",
    nerd_font = "auto",
  },
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
}
