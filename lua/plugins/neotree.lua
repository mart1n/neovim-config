return {
    "nvim-neo-tree/neo-tree.nvim",
    config = true,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        hide_dotfiles = false,
      },
      window = {
        width = 30,
      },
    },
}
