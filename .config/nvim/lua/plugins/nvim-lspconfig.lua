local function on_attach(client)
    local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	-- keymaps for lsp
	--vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	--vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, { buffer = 0 })
	--vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("n", "<leader>vn", vim.diagnostic.goto_next, { buffer = 0 })
	vim.keymap.set("n", "<leader>vp", vim.diagnostic.goto_prev, { buffer = 0 })
	--vim.keymap.set("i", "<c-h>", vim.lsp.buf.signature_help, { buffer = 0 })
	vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true })

	telescope_mapper("gr", "lsp_references", nil, true)
	telescope_mapper("<leader>pv", "find_symbol", nil, true)
	telescope_mapper("<leader>pd", "lsp_document_symbols", nil, true)

	vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

	-- Attach any filetype specific options to the client
	filetype_attach[filetype](client)
end
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Actual configs
local lsp_flags = {
	debounce_text_changes = 150,
}
require'lspconfig'.pyright.setup{}
