return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = {
      -- Optional: tweak styling
      heading = {
        enabled = true,
        signs = { "", "", "", "", "", "" },
      },
      code = { enabled = true },
      bullet = { enabled = true },
      table = { enabled = true },
    },
  },
}

