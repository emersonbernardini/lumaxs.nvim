return {
	-- Required
	bg = "#0f1012",
	fg = "#c8cdd8",
	keyword = "#b0b8c8",
	func = "#505a6a",
	type_ = "#485260",
	string = "#c8a87e",
	number = "#96c5f8",
	comment = "#303840",
	operator = "#96c5f8",

	-- Backgrounds
	surface = "#0b0d10",
	line = "#131518",
	selection = "#1e2028",
	border = "#191c24",
	border_focus = "#2a3048",
	bg_dark = "#090b0e",
	bg_hover = "#131518",
	bg_active = "#1e2028",
	float_bg = "#171920",
	float_border = "#2a3048",

	-- Foregrounds
	fg_muted = "#606878",
	fg_subtle = "#404858",
	fg_disabled = "#2e3240",
	line_nr = "#2a2e3a",
	line_nr_active = "#8890a0",

	-- Cinder-specific semantic extras
	func_call = "#7a8898", -- function call (more visible than definition)
	func_import = "#8ab0c8", -- import/from/export
	comment_doc = "#3a4450", -- comment.documentation
	accent = "#96c5f8",
	accent_dim = "#6aa8e8", -- : and , (secondary punctuation)
	accent_dark = "#4a88c8", -- string.escape
	accent_bright = "#b0d8ff", -- string.special

	-- Semantic
	ok = "#507060",
	error = "#906060",
	warn = "#907050",
	info = "#7baac8",
	hint = "#405868",
	git_mod = "#907050",

	-- Diff
	diff_add = "#507060",
	diff_del = "#906060",
	diff_chg = "#907050",
	diff_add_bg = "#0e1a14",
	diff_del_bg = "#1a0e0e",
	diff_chg_bg = "#1a1608",

	-- Virtual text bg
	vt_err = "#1a0e0e",
	vt_warn = "#1a1608",
	vt_info = "#0c1420",
	vt_hint = "#0c1420",

	-- Terminal ANSI
	t = {
		black = "#0f1012",
		black_br = "#2e3240",
		red = "#906060",
		red_br = "#401818",
		green = "#507060",
		green_br = "#203828",
		yellow = "#907050",
		yellow_br = "#403818",
		blue = "#7baac8",
		blue_br = "#203848",
		magenta = "#706890",
		magenta_br = "#301840",
		cyan = "#507880",
		cyan_br = "#203038",
		white = "#b0b8c8",
		white_br = "#e8ecf0",
	},

	-- Overrides: groups that differ from the default highlights.lua
	overrides = function(c)
		return {
			-- Classic syntax
			["Function"] = { fg = c.func },
			["Constant"] = { fg = c.type_ },
			["Type"] = { fg = c.type_, italic = true },
			["Structure"] = { fg = c.type_, italic = true },
			["Typedef"] = { fg = c.type_, italic = true },
			["PreProc"] = { fg = c.func_import },
			["Include"] = { fg = c.func_import },
			["Special"] = { fg = c.accent_bright },
			["SpecialChar"] = { fg = c.accent_dark },
			["Delimiter"] = { fg = c.accent_dim },
			["Todo"] = { fg = c.accent, bold = true },
			["Search"] = { fg = c.fg, bg = "#1a2e3a" },
			["Substitute"] = { fg = c.bg, bg = c.accent_dim },
			["MatchParen"] = { fg = c.accent, bg = "#162030", bold = true },

			-- Treesitter
			["@variable.parameter"] = { fg = c.fg },
			["@variable.member"] = { fg = c.fg_muted },
			["@constant"] = { fg = c.type_ },
			["@constant.builtin"] = { fg = c.type_ },
			["@constant.macro"] = { fg = c.keyword },
			["@module"] = { fg = c.fg_subtle, italic = true },
			["@module.builtin"] = { fg = c.fg_subtle, italic = true },
			["@string.regexp"] = { fg = c.accent_dim },
			["@string.escape"] = { fg = c.accent_dark },
			["@string.special"] = { fg = c.accent_bright },
			["@string.special.url"] = { fg = c.string, underline = true },
			["@character.special"] = { fg = c.accent_bright },
			["@boolean"] = { fg = c.accent },
			["@number"] = { fg = c.accent },
			["@number.float"] = { fg = c.accent },
			["@type"] = { fg = c.type_, italic = true },
			["@type.builtin"] = { fg = c.type_, italic = true },
			["@type.definition"] = { fg = c.type_, italic = true },
			["@attribute"] = { fg = c.keyword },
			["@attribute.builtin"] = { fg = c.keyword },
			["@property"] = { fg = c.fg_muted },
			["@function"] = { fg = c.func },
			["@function.builtin"] = { fg = c.func_call },
			["@function.call"] = { fg = c.func_call },
			["@function.macro"] = { fg = c.func },
			["@function.method"] = { fg = c.func },
			["@function.method.call"] = { fg = c.func_call },
			["@constructor"] = { fg = c.type_, italic = true },
			["@keyword.import"] = { fg = c.func_import },
			["@keyword.directive"] = { fg = c.func_import },
			["@keyword.directive.define"] = { fg = c.func_import },
			["@operator"] = { fg = c.accent },
			["@punctuation.bracket"] = { fg = c.accent },
			["@punctuation.delimiter"] = { fg = c.accent_dim },
			["@punctuation.special"] = { fg = c.accent },
			["@comment"] = { fg = c.comment, italic = true },
			["@comment.documentation"] = { fg = c.comment_doc, italic = true },
			["@comment.todo"] = { fg = c.accent, bold = true },
			["@variable.builtin"] = { fg = c.keyword },

			-- Markup
			["@markup.heading"] = { fg = c.fg, bold = true },
			["@markup.heading.1"] = { fg = c.fg, bold = true },
			["@markup.heading.2"] = { fg = c.keyword, bold = true },
			["@markup.heading.3"] = { fg = c.fg_muted },
			["@markup.heading.4"] = { fg = c.func_call },
			["@markup.heading.5"] = { fg = c.type_ },
			["@markup.heading.6"] = { fg = c.fg_muted },
			["@markup.link"] = { fg = c.string, underline = true },
			["@markup.link.label"] = { fg = c.string, italic = true },
			["@markup.link.url"] = { fg = c.accent_dim, underline = true },
			["@markup.raw"] = { fg = c.string },
			["@markup.raw.block"] = { fg = c.fg },
			["@markup.list"] = { fg = c.accent_dim },
			["@markup.list.checked"] = { fg = c.diff_add },
			["@tag.delimiter"] = { fg = c.accent_dim },
			["@tag.attribute"] = { fg = c.fg_muted },

			-- Plugins
			["IblIndent"] = { fg = "#1e2230" },
			["IblScope"] = { fg = c.border },
			["TelescopeNormal"] = { fg = c.fg, bg = c.surface },
			["TelescopeBorder"] = { fg = c.border, bg = c.surface },
			["TelescopePromptNormal"] = { fg = c.fg, bg = c.float_bg },
			["TelescopePromptBorder"] = { fg = c.border_focus, bg = c.float_bg },
			["TelescopeResultsTitle"] = { fg = c.fg_muted, bg = c.surface },
			["TelescopePreviewTitle"] = { fg = c.fg_muted, bg = c.surface },
			["NeoTreeNormal"] = { fg = c.fg, bg = c.surface },
			["NeoTreeNormalNC"] = { fg = c.fg, bg = c.surface },
			["NeoTreeDirectoryIcon"] = { fg = c.fg_muted },
			["NeoTreeDirectoryName"] = { fg = c.fg },
			["NeoTreeFileName"] = { fg = c.fg },
			["NeoTreeRootName"] = { fg = c.func, bold = true },
			["NeoTreeGitIgnored"] = { fg = c.fg_subtle },
			["WhichKeyGroup"] = { fg = c.func },
		}
	end,
}
