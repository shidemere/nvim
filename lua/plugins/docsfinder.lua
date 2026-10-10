return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fo",
        function()
          if vim.fn.executable("go") ~= 1 then
            vim.notify("Go executable not found", vim.log.levels.WARN)
            return
          end

          local goroot = vim.fn.systemlist({ "go", "env", "GOROOT" })[1]
          if not goroot or goroot == "" then
            vim.notify("GOROOT not found", vim.log.levels.WARN)
            return
          end

          require("telescope.builtin").live_grep({
            prompt_title = "Go Documentation",
            search_dirs = {
              goroot .. "/src",
              goroot .. "/doc",
            },
          })
        end,
        desc = "Search Go Documentation",
      },
    },
  },
  {
    "fredrikaverpil/godoc.nvim",
    version = "*",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
      -- Опционально: для подсветки синтаксиса
      -- { "nvim-treesitter/nvim-treesitter" },
    },
    cmd = { "GoDoc" },
    opts = {
      picker = {
        type = "telescope", -- Именно это включает Telescope
      },
    },
  },
}
