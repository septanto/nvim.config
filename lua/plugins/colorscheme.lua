return {
  { "ellisonleao/gruvbox.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "navarasu/onedark.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.schedule(function()
          if vim.o.background == "light" then
            vim.cmd("colorscheme github_light")
          else
            vim.cmd("colorscheme tokyonight")
          end
        end)
      end,
    },
  },
}
