return {
  { "nvim-tree/nvim-web-devicons", lazy = true },
  {
    "preservim/nerdtree",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "NERDTree", "NERDTreeToggle" },
    init = function()
      vim.g.NERDTreeShowHidden = 1
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8", -- 0.2.x+ hard-requires a native rock (telescope._) that needs luarocks/hererocks
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    cmd = "Telescope",
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          prompt_prefix = "  ",
          selection_caret = " ",
          sorting_strategy = "ascending",
          file_ignore_patterns = { "%.git/" },
          layout_strategy = "horizontal",
          layout_config = {
            prompt_position = "top",
            horizontal = { preview_width = 0.55 },
          },
          mappings = {
            i = {
              ["<Esc>"] = "close",
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
              ["<C-u>"] = false, -- don't clear the prompt, scroll preview instead
              ["<C-d>"] = require("telescope.actions").preview_scrolling_down,
            },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        },
      })
      telescope.load_extension("fzf")
    end,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
