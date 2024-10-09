return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- disable annoying method signature popup
      opts.lsp.signature = {
        auto_open = { enabled = false },
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      opts.inlay_hints = { enabled = false }
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.experimental = {
        ghost_text = false,
        native_menu = false,
      }
      cmp.setup.filetype({ 'markdown', 'help' }, {
        window = {
          documentation = cmp.config.window.bordered()
        }
      })
    end
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = {
        "pyright", "json-lsp", "prettierd", "typescript-language-server", "stylua", "lua-language-server"
      }
    end
  },
	{
		'akinsho/toggleterm.nvim',
    config = true
	},
  {
    "nvim-treesitter/nvim-treesitter",
    init = function(plugin)
      require("lazy.core.loader").add_to_rtp(plugin)
      require("nvim-treesitter.query_predicates")

      local is_windows = vim.fn.has('win32') == 1
      if is_windows then
        require("nvim-treesitter.install").compilers = { "zig" }
      end
    end
  }
}
