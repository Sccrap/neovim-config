local parsers = {
  "python",
  "yaml",
  "toml",
  "json",
  "bash",
  "dockerfile",
  "terraform",
  "hcl",
  "markdown",
  "lua",
  "vim",
  "vimdoc",
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter").setup()
    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = vim.list_extend({ "help" }, parsers),
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
