local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        -- python
        null_ls.builtins.formatting.autopep8,

    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ 
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end
					 })
                    -- vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})
