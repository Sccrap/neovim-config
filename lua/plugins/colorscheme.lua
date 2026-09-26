return {
  { "rafi/awesome-vim-colorschemes" },
  { "folke/tokyonight.nvim" },
  { "sainnhe/everforest" },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa-wave")
    end,
  },
}
