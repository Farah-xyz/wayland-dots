-----------------------------------------------------------
-- Mason configuration file
-----------------------------------------------------------
-- Plugin: Mason
-- url: https://github.com/williamboman/mason.nvim
local status_ok, mason = pcall(require, 'mason')
if not status_ok then
  return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'pyright', 'html', 'tsserver', 'emmet_language_server'},
})
