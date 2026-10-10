return {
	-- Load all theme plugins but don't apply them
	-- This ensures all colorschemes are available for hot-reloading
	--
	-- Omarchy 4 generates most theme specs from default/themed/neovim.lua.tpl on
	-- top of aether, so the single-theme plugins below (ethereal, vantablack,
	-- white, monokai-pro, miasma) are only reached by Omarchy 3.8, which ships a
	-- neovim.lua per theme. Keep them until 3.8 is out of support.
	{
		"ribru17/bamboo.nvim",
		lazy = true,
		priority = 1000,
	},
	-- Name and branch must match Omarchy 4's generated theme spec
	-- (default/themed/neovim.lua.tpl). lazy merges specs by url and lets an
	-- explicit name rename the merged plugin, so a bare "bjarneo/aether.nvim"
	-- here builds the cache into lazy/aether.nvim while every aether-themed
	-- Omarchy 4 install renames it to lazy/aether at runtime -- a directory the
	-- package never shipped. That cost a network clone on first launch, and the
	-- theme fell back to tokyonight until nvim was restarted.
	{
		"bjarneo/aether.nvim",
		branch = "v3",
		name = "aether",
		lazy = true,
		priority = 1000,
	},
	{
		"bjarneo/ethereal.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"bjarneo/hackerman.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"bjarneo/vantablack.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"bjarneo/white.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
	},
	{
		"neanias/everforest-nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"kepano/flexoki-neovim",
		lazy = false,
		priority = 1000,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"tahayvr/matteblack.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"gthelding/monokai-pro.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		priority = 1000,
	},
	{
		"ficcdaf/ashen.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"OldJobobo/miasma.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		-- The repository already ships colors/oxocarbon.lua. Without this,
		-- lazy.nvim detects its rockspec and unnecessarily builds Fennel through
		-- LuaRocks, which can fail when the system Lua headers do not match.
		build = false,
		-- Keep it on the runtime path so :colorscheme completion and every theme
		-- picker can discover it even though its rockspec build is disabled.
		lazy = false,
		priority = 1000,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
	},
	{
		"jacoborus/tender.vim",
		lazy = false,
		priority = 1000,
	},
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = { "rktjmp/lush.nvim" },
		lazy = false,
		priority = 1000,
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"andersevenrud/nordic.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"savq/melange-nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000,
	},
	{
		"comfysage/evergarden",
		lazy = false,
		priority = 1000,
	},
	{
		"rmehri01/onenord.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"Shatur/neovim-ayu",
		lazy = false,
		priority = 1000,
	},
	{
		"slugbyte/lackluster.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"OldJobobo/retro-82.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"omacom-io/lumon.nvim",
		lazy = true,
		priority = 1000,
	},
}
