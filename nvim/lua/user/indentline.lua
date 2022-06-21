local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile", "startify" }
vim.g.indent_blankline_filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
    "startify",
  }

indent_blankline.setup {
  show_end_of_line = true,
  show_current_context = true,
  indent_blankline_char = "▏",
  indent_blankline_show_trailing_blankline_indent = false,
  indent_blankline_show_first_indent_level = true,
  indent_blankline_use_treesitter = true,
  indent_blankline_show_current_context = true,
}
