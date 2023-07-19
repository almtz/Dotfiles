local keymap = require("keymaps.helper")
local nmap, imap, cmap, xmap = keymap.nmap, keymap.imap, keymap.cmap, keymap.xmap
local silent, noremap = keymap.silent, keymap.noremap
local opts = keymap.new_opts
local cmd = keymap.cmd

vim.g.mapleader = " "

-- Normal mode
nmap({
	{ "<leader>w", cmd("w"), opts(noremap, silent) },
	{ "<leader>e", cmd("NvimTreeToggle"), opts(noremap, silent) },

	-- Windows
	{ "<C-h>", "<C-w>h", opts(noremap) },
	{ "<C-j>", "<C-w>j", opts(noremap) },
	{ "<C-k>", "<C-w>k", opts(noremap) },
	{ "<C-l>", "<C-w>l", opts(noremap) },
	{ "<leader>ws", "<C-w>s", opts(noremap, silent) },
	{ "<leader>wv", "<C-w>v", opts(noremap, silent) },
	{ "<leader>wq", "<C-w>q", opts(noremap, silent) },

	-- Git
	{ "<leader>gs", cmd("G"), opts(noremap, silent) },
	{ "<leader>ga", cmd("G add ."), opts(noremap, silent) },
	{ "<leader>gp", cmd("G push"), opts(noremap, silent) },
	{ "<leader>gP", cmd("G pull"), opts(noremap, silent) },

	-- Telescope
	{ "<leader>ff", cmd("Telescope find_files"), opts(noremap, silent) },
	{ "<leader>fc", cmd("Telescope current_buffer_fuzzy_find"), opts(noremap, silent) },
	{ "<leader>fg", cmd("Telescope live_grep"), opts(noremap, silent) },
	{ "<leader>fb", cmd("Telescope buffers"), opts(noremap, silent) },
	{ "<leader>fh", cmd("Telescope help_tags"), opts(noremap, silent) },

	-- LSP Keybinds (set in the lsp plugin lua file)
	-- vim.keymap.set('n', '<leader>cK', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cgd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cgD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cgi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cgo', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cgr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cgs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
	-- vim.keymap.set('n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
	-- vim.keymap.set({'n', 'x'}, '<leader>cf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
	-- vim.keymap.set('n', '<leader>cca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

	-- vim.keymap.set('n', '<leader>cl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
	-- vim.keymap.set('n', '<leader>c[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
	-- vim.keymap.set('n', '<leader>c]d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
})
