local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all", -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		-- disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.twig = {
  install_info = {
    url = "https://github.com/eirabben/tree-sitter-twig.git",
    files = {"src/parser.c", "src/scanner.cc"},
    branch = "main",
  },
  filetype = "twig",
}
