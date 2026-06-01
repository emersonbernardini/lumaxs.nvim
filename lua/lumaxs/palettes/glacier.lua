return {
	-- Required
	bg = "#080e14",
	fg = "#b8ccd8",
	keyword = "#4a9ab8",
	func = "#8aaccf",
	type_ = "#5a88b8",
	string = "#6ab8a8",
	number = "#5a9ab0",
	comment = "#1e3040",
	operator = "#2e5868",

	-- Backgrounds
	surface = "#070c12",
	line = "#0c1320",
	selection = "#162438",
	border = "#0f1c2a",
	border_focus = "#2a4a6a",
	bg_dark = "#060a10",
	bg_hover = "#0f1a28",
	bg_active = "#162438",
	float_bg = "#080e14",
	float_border = "#2a4a6a",

	-- Foregrounds
	fg_muted = "#3a6070",
	fg_subtle = "#284050",
	fg_disabled = "#1a2e3e",
	line_nr = "#183048",
	line_nr_active = "#4a7a9a",

	-- Extra syntax
	property = "#7aaac0",
	constant = "#6888a8",
	namespace = "#3a7890",
	punct = "#254055",
	accent = "#6ab8a8",
	string_esc = "#4a9890",
	string_re = "#5aaab8",
	string_spec = "#80c8b8",
	comment_doc = "#2a4458",

	-- Semantic
	ok = "#4a8878",
	error = "#8a5060",
	warn = "#7a8860",
	info = "#6ab8a8",
	hint = "#2a5870",
	git_mod = "#7a8860",

	-- Diff
	diff_add = "#4a8878",
	diff_del = "#8a5060",
	diff_chg = "#7a8860",
	diff_add_bg = "#0c2018",
	diff_del_bg = "#1e1018",
	diff_chg_bg = "#1e2210",

	-- Virtual text bg
	vt_err = "#1e1018",
	vt_warn = "#1e2210",
	vt_info = "#081420",
	vt_hint = "#081420",

	-- Overrides
	overrides = function(c)
		return {
			["@comment.documentation"] = { fg = c.comment_doc, italic = true },
			["@string.escape"] = { fg = c.string_esc },
			["@string.regexp"] = { fg = c.string_re },
			["@string.special"] = { fg = c.string_spec },
		}
	end,
}
