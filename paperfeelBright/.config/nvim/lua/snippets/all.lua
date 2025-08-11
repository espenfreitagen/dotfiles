-- ~/.config/nvim/lua/snippets/all.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Helper: full path to active file
local function full_path()
	return vim.fn.expand("%:p")
end

-- Helper: filename only
local function file_name()
	return vim.fn.expand("%:t")
end

-- Helper: dynamic shebang based on filetype
local function shebang()
	local ft = vim.bo.filetype
	if ft == "sh" or ft == "bash" then
		return "#!/usr/bin/env bash"
	elseif ft == "python" then
		return "#!/usr/bin/env python3"
	elseif ft == "lua" then
		return "#!/usr/bin/env lua"
	else
		return "#!/usr/bin/env " .. ft
	end
end

return {
	-- Meta
	s("meta", {
		t({ shebang(), "" }),
		t({ "#" }),
		f(full_path),
		t({ "", "# Name: " }),
		f(file_name),
		t({ "", "" }),
		i(0),
	}),

	-- Shebang
	s("bang", {
		t({ shebang(), "" }),
		i(0),
	}),

	-- Path
	s("path", {
		t({ "#" }),
		f(full_path),
		i(0),
	}),

	-- Colors
	s("colors", {
		t({ "~/.config/colors/colorscheme.css" }),
		i(0),
	}),

	-- NEORG

	s("h7", {
		t({ "******* " }),
		i(0),
	}),

	s("h8", {
		t({ "******** " }),
		i(0),
	}),

	s("h9", {
		t({ "********* " }),
		i(0),
	}),

	s("h10", {
		t({ "********** " }),
		i(0),
	}),

	s("bash", {
		t({ "******** " }),
		i(0),
	}),
}
