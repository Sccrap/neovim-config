return {
  { "neovim/nvim-lspconfig" },
  { "b0o/schemastore.nvim" },
  { "towolf/vim-helm" },
  {
    "mfussenegger/nvim-ansible",
    ft = { "yaml", "yaml.ansible" },
  },
  { "mason-org/mason.nvim", opts = {} },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
      "saghen/blink.cmp",
      "b0o/schemastore.nvim",
    },
    config = function()
      -- merge blink.cmp's completion capabilities into every LSP server
      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      })

      -- Python: type-checking/completion (pyright) + linting/formatting (ruff)
      vim.lsp.config("pyright", {})
      vim.lsp.config("ruff", {})

      -- YAML with schemas for Kubernetes, docker-compose, GitHub Actions, etc.
      vim.lsp.config("yamlls", {
        settings = {
          yaml = {
            schemaStore = { enable = false, url = "" },
            schemas = require("schemastore").yaml.schemas(),
            validate = true,
          },
        },
      })

      -- Ansible playbooks/roles (filetype set by nvim-ansible)
      vim.lsp.config("ansiblels", {
        filetypes = { "yaml.ansible" },
      })

      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "ruff",
          "yamlls",
          "dockerls",
          "docker_compose_language_service",
          "helm_ls",
          "terraformls",
          "ansiblels",
          "bashls",
        },
        automatic_enable = true,
      })
    end,
  },
}
