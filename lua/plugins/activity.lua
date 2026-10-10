return {
  {
    "gisketch/triforce.nvim",
    dependencies = { "nvzone/volt" },
    lazy = false,
    keys = {
      {
        "<leader>tp",
        function()
          require("triforce").show_profile()
        end,
        desc = "Triforce Profile",
      },
    },
    opts = {
      icon_engine = "mini",
    },
  },
  {
    "aikhe/wrapped.nvim",
    dependencies = { "nvzone/volt" },
    cmd = { "WrappedNvim" },
    opts = {
      path = vim.fn.stdpath("config"),
    },
  },
}
