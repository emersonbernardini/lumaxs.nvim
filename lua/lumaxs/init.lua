local M = {}

--[[
  Fills missing palette keys with sensible fallbacks.
  Each palette only needs to define what is unique — the rest comes from here.
]]

local function normalize(p)
	local function d(val, fallback)
		return val ~= nil and val or fallback
	end

	-- Derived backgrounds
	p.surface = d(p.surface, p.bg)
	p.line = d(p.line, p.surface)
	p.selection = d(p.selection, p.surface)
	p.border = d(p.border, p.surface)
	p.border_focus = d(p.border_focus, p.keyword)
	p.bg_dark = d(p.bg_dark, p.surface)
	p.bg_hover = d(p.bg_hover, p.line)
	p.bg_active = d(p.bg_active, p.selection)
	p.float_bg = d(p.float_bg, p.surface)
	p.float_border = d(p.float_border, p.border_focus)

	-- Derived foregrounds
	p.fg_muted = d(p.fg_muted, p.comment)
	p.fg_subtle = d(p.fg_subtle, p.comment)
	p.fg_disabled = d(p.fg_disabled, p.comment)

	-- Line numbers
	p.line_nr = d(p.line_nr, p.comment)
	p.line_nr_active = d(p.line_nr_active, p.keyword)

	-- Extra syntax
	p.constant = d(p.constant, p.number)
	p.property = d(p.property, p.fg)
	p.namespace = d(p.namespace, p.type_)
	p.accent = d(p.accent, p.keyword)
	p.punct = d(p.punct, p.operator)
	p.string_esc = d(p.string_esc, p.number)
	p.string_re = d(p.string_re, p.string)
	p.string_spec = d(p.string_spec, p.number)
	p.comment_doc = d(p.comment_doc, p.comment)

	-- Semantic
	p.ok = d(p.ok, "#4ec994")
	p.error = d(p.error, "#cc5555")
	p.warn = d(p.warn, p.number)
	p.info = d(p.info, p.func)
	p.hint = d(p.hint, p.keyword)
	p.git_mod = d(p.git_mod, p.warn)

	-- Diff sign fg
	p.diff_add = d(p.diff_add, p.ok)
	p.diff_del = d(p.diff_del, p.error)
	p.diff_chg = d(p.diff_chg, p.func)

	-- Diff line bg
	p.diff_add_bg = d(p.diff_add_bg, p.bg)
	p.diff_del_bg = d(p.diff_del_bg, p.bg)
	p.diff_chg_bg = d(p.diff_chg_bg, p.bg)

	-- Virtual text bg
	p.vt_err = d(p.vt_err, p.bg)
	p.vt_warn = d(p.vt_warn, p.bg)
	p.vt_info = d(p.vt_info, p.bg)
	p.vt_hint = d(p.vt_hint, p.bg)

	-- Terminal
	p.term_bw = d(p.term_bw, p.fg)

	return p
end

--[[
  Loads a theme by name (e.g. "glacier", "ember", "noturne", etc.).
  When called without an argument, loads glacier and registers the colorscheme
  as "lumaxs" (keeping consistency with the entry file name).
]]
function M.load(name)
	-- Tracks whether called without an argument (entry via :colorscheme lumaxs)
	local is_default_entry = (name == nil)
	name = name or "glacier"

	local ok, palette = pcall(require, "lumaxs.palettes." .. name)
	if not ok then
		vim.notify(
			string.format("[lumaxs] palette '%s' not found, falling back to default: glacier", name),
			vim.log.levels.WARN
		)
		palette = require("lumaxs.palettes.glacier")
		name = "glacier"
		is_default_entry = false
	end

	local c = normalize(palette)

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	-- When loaded via :colorscheme lumaxs (no argument), preserves
	-- the name "lumaxs" so theme-detection plugins can find it.
	vim.g.colors_name = is_default_entry and "lumaxs" or ("lumaxs-" .. name)

	require("lumaxs.highlights").apply(c)

	-- Apply palette overrides, if defined
	if type(c.overrides) == "function" then
		for group, opts in pairs(c.overrides(c)) do
			vim.api.nvim_set_hl(0, group, opts)
		end
	end
end

return M
