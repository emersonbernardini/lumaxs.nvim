--[[
    Template / guide for new themes
    Add your new theme at: lua/lumaxs/palettes/your_theme.lua
]]

-- "Description / theme vibe"

return {
    -- ── Required ───────────────────────────────────────────────────────────
    -- Without these, normalize() will throw an error.
    bg       = "#",
    fg       = "#",
    keyword  = "#",
    func     = "#",
    type_    = "#", -- underscore: "type" is a reserved keyword in Lua!
    string   = "#",
    number   = "#",
    comment  = "#",
    operator = "#",

    -- ── Backgrounds (optional — fallback: bg) ─────────────────────────────
    -- surface      = "#",   -- panels, sidebar          fallback: bg
    -- line         = "#",   -- cursorline, colorcolumn   fallback: surface
    -- selection    = "#",   -- visual                    fallback: surface
    -- border       = "#",   --                           fallback: surface
    -- border_focus = "#",   -- active border               fallback: keyword
    -- bg_dark      = "#",   -- statusbar, tabbar         fallback: surface
    -- bg_hover     = "#",   --                           fallback: line
    -- bg_active    = "#",   -- active element            fallback: selection
    -- float_bg     = "#",   -- NormalFloat, popups       fallback: surface
    -- float_border = "#",   --                           fallback: border_focus

    -- ── Foregrounds (optional — fallback: comment) ────────────────────────
    -- fg_muted     = "#",   -- secondary text          fallback: comment
    -- fg_subtle    = "#",   -- placeholder               fallback: comment
    -- fg_disabled  = "#",   -- disabled              fallback: comment
    -- line_nr      = "#",   -- line numbers          fallback: comment
    -- line_nr_active = "#", -- current line number     fallback: keyword

    -- ── Extra syntax (optional — fallback: semantic fields above) ─────────
    -- property   = "#",   -- @property, @variable.member   fallback: fg
    -- constant   = "#",   -- @constant                     fallback: number
    -- namespace  = "#",   -- @module, @namespace           fallback: type_
    -- punct      = "#",   -- @punctuation.*                fallback: operator
    -- accent     = "#",   -- cursor, search, matchparen    fallback: keyword
    -- string_esc  = "#",  -- @string.escape                fallback: number
    -- string_re   = "#",  -- @string.regexp                fallback: string
    -- string_spec = "#",  -- @string.special               fallback: number

    -- ── Semantic (optional) ───────────────────────────────────────────────
    -- ok      = "#",   -- success, git add    fallback: "#4ec994"
    -- error   = "#",   --                     fallback: "#cc5555"
    -- warn    = "#",   --                     fallback: number
    -- info    = "#",   --                     fallback: func
    -- hint    = "#",   --                     fallback: keyword
    -- git_mod = "#",   -- git change          fallback: warn

    -- ── Diff signs fg (optional) ──────────────────────────────────────────
    -- diff_add = "#",   -- fallback: ok
    -- diff_del = "#",   -- fallback: error
    -- diff_chg = "#",   -- fallback: func

    -- ── Diff line bg (optional — fallback: bg) ────────────────────────────
    -- diff_add_bg = "#",
    -- diff_del_bg = "#",
    -- diff_chg_bg = "#",

    -- ── Virtual text bg (optional — fallback: bg) ─────────────────────────
    -- vt_err  = "#",
    -- vt_warn = "#",
    -- vt_info = "#",
    -- vt_hint = "#",

    -- ── Terminal ANSI (optional — if omitted, derived from semantics) ──────
    -- t = {
    --   black    = "#",  black_br  = "#",
    --   red      = "#",  red_br    = "#",
    --   green    = "#",  green_br  = "#",
    --   yellow   = "#",  yellow_br = "#",
    --   blue     = "#",  blue_br   = "#",
    --   magenta  = "#",  magenta_br= "#",
    --   cyan     = "#",  cyan_br   = "#",
    --   white    = "#",  white_br  = "#",
    -- },

    -- ── Overrides (optional — groups that differ from the default) ────────
    -- overrides = function(c)
    --   return {
    --     ["@function"]   = { fg = c.minha_cor },
    --     ["NormalFloat"] = { bg = c.outra_cor },
    --   }
    -- end,
}
