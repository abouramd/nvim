local M = {}

-- Autoformat on save, credit Folke LazyVim
Autoformat = true

function M.set_keybinds(buf)
	local nmap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set('n', keys, func, { buffer = buf, desc = desc })
	end

	nmap('<Space>rn', vim.lsp.buf.rename, '[R]e[n]ame')
	nmap('<Space>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

	-- Jumps
	nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
	nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
	nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
	nmap('gD', vim.lsp.buf.type_definition, '[G]oto Type [D]efinition')
	nmap('<C-j>', vim.diagnostic.goto_next, 'Next diagnostics')
	nmap('<C-k>', vim.diagnostic.goto_prev, 'Prev diagnostics')
	nmap('<Space>i', vim.diagnostic.open_float, 'Open float diagnostics')

	-- See `:help K` for why this keymap
	nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
end

function M.set_diagnostics()
	-- diagnostics settings
	local opts = {
		underline = true,
		update_in_insert = false,
		virtual_text = { spacing = 4, prefix = '●' },
		severity_sort = true,
	}

	for name, icon in pairs(require('config').icons.diagnostics) do
		name = 'DiagnosticSign' .. name
		vim.fn.sign_define(name, { text = icon, texthl = name, numhl = '' })
	end
	vim.diagnostic.config(opts)
end

function M.format()
	local buf = vim.api.nvim_get_current_buf()
	local ft = vim.bo[buf].filetype
	local have_nls = #require('null-ls.sources').get_available(ft, 'NULL_LS_FORMATTING') > 0

	vim.lsp.buf.format({
		bufnr = buf,
		filter = function(client)
			if have_nls then
				return client.name == 'null-ls'
			end
			return client.name ~= 'null-ls'
		end,
		formatting_options = nil,
		timeout_ms = nil,
	})
end

function M.on_attach(client, buf)
	M.set_keybinds(buf)

	vim.api.nvim_buf_create_user_command(buf, 'Format', function(_)
		vim.lsp.buf.format()
	end, { desc = 'Format current buffer with LSP' })

	-- Autoformat on save, credit Folke LazyVim
	if  Autoformat and client.supports_method('textDocument/formatting') then
		vim.api.nvim_create_autocmd('BufWritePre', {
			group = vim.api.nvim_create_augroup('LspFormat.' .. buf, {}),
			buffer = buf,
			callback = M.format,
		})
	end
end

return M
