return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      toggler = {
        line = "<C-c>",
        block = "<C-b>",
      },
      opleader = {
        line = "<C-c>",
        block = "<C-b>",
      },
    })
  end,
}
