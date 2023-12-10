return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
      bashls = {},
      tsserver = {},
      -- ["nginx-language-server"] = {}, -- Configuration for the Nginx language server
    },
  },
}
