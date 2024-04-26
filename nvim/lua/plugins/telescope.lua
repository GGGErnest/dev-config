return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    -- add a keymap to browse plugin files
    {
      "<leader>pp",
      function()
        local telescope = require("telescope")
        -- load yank history
        telescope.load_extension("yank_history")
      end,
      desc = "Yank History",
    },
  },
}
