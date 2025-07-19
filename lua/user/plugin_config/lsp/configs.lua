local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local servers = {
    "cssls",         -- Css
    "gopls",         -- Golang
    "clangd",        -- C++/C
    "pyright",       -- Python
    -- "tsserver", -- Typescript/Javascript (tsserver is deprecated)
    "ts_ls",         -- New ts server
    "jsonls",        -- Json
    "html",          -- Html
    "lua_ls",        -- Lua
    -- "sumneko_lua",
    "rust_analyzer", -- Rust
    "bashls",        -- Bash
    "taplo",         -- TOML
    "lemminx",       -- XML
    "yamlls",        -- YAML
    "dockerls",      -- Docker
    "hyprls",
    -- "grammarly", -- Grammarly
}

lsp_installer.setup({
    ensure_installed = servers,

    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        check_outdated_servers_on_open = true,
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗",
        },
    },
})

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- :help lspconfig-all
for _, server in pairs(servers) do
    local opts = {
        on_attach = require("user.plugin_config.lsp.handlers").on_attach,
        capabilities = require("user.plugin_config.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "user.plugin_config.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspconfig[server].setup(opts)
end
