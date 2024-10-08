return {
  {
    "williamboman/mason-lspconfig",
    opts = function(_, opts)
      opts.ensure_installed = {
        "pyright", "json-lsp", "prettierd", "typescript-language-server", "stylua", "lua-language-server"
      }
    end
  },
	{
		'akinsho/toggleterm.nvim',
    config = true
	}
}
