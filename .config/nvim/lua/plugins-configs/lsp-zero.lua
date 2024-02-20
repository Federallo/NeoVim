local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client,bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver', 
		'rust_analyzer', 
		'docker_compose_language_service',
		'dockerls',
		'html',
		'hls',--haskell
		'java_language_server',
		'quick_lint_js',
		'ltex',
		'lua_ls',
		'jedi_language_server',--python

	},
	handlers = {
		lsp_zero.default_setup,
		--myserver = function()
		--	require('lspconfig').myserver.setup({
		--	})
		--end,
	},
})
