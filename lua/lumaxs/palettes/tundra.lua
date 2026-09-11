-- "Gelo azul-ciano com musgo verde por baixo — a mesma família de cor do
--  Glacier, mas com degraus grandes entre cada token e sem itálico em nada."

return {
    -- ── Required ───────────────────────────────────────────────────────────
    bg       = "#070c12", -- unificado com o antigo panel.background
    fg       = "#b8ccd8",
    keyword  = "#4a9ab8", -- cor original do Glacier, mantida
    func     = "#156a79", -- mais escuro/saturado que o keyword, de propósito
    type_    = "#88ddd7",
    string   = "#4b9b62", -- família verde-musgo, âncora #30503a
    number   = "#5eba74",
    comment  = "#1b2b37",
    operator = "#284c5d",

    -- ── Backgrounds ─────────────────────────────────────────────────────────
    surface      = "#080e14",
    line         = "#0c1320",
    selection    = "#162438",
    border       = "#0f1c2a",
    border_focus = "#2a4a6a",
    bg_dark      = "#060a10",
    bg_hover     = "#0f1a28",
    -- bg_active, float_bg, float_border: iguais aos seus fallbacks, omitidos

    -- ── Foregrounds ────────────────────────────────────────────────────────
    fg_muted       = "#3a6070",
    fg_subtle      = "#284050",
    fg_disabled    = "#1a2e3e",
    line_nr        = "#183048",
    line_nr_active = "#4a7a9a",

    -- ── Extra syntax ───────────────────────────────────────────────────────
    property    = "#40afbf",
    constant    = "#30503c", -- a própria âncora da família verde
    -- namespace, punct: iguais aos fallbacks (type_ e operator), omitidos
    accent      = "#6ab8a8", -- mantém o accent original do Glacier (cursor/search)
    string_esc  = "#a7d7ae",
    string_re   = "#a7d7ae",
    string_spec = "#80cb8e",

    -- ── Semantic ───────────────────────────────────────────────────────────
    ok      = "#4a8878",
    error   = "#8a5060",
    warn    = "#7a8860",
    info    = "#6ab8a8",
    hint    = "#2a5870",
    -- git_mod: igual ao warn, omitido

    -- ── Diff signs fg ──────────────────────────────────────────────────────
    -- diff_add, diff_del: iguais a ok/error, omitidos
    diff_chg = "#7a8860",

    -- ── Diff line bg ───────────────────────────────────────────────────────
    diff_add_bg = "#0c2018",
    diff_del_bg = "#1e1018",
    diff_chg_bg = "#1e2210",

    -- ── Virtual text bg ────────────────────────────────────────────────────
    vt_err  = "#1e1018",
    vt_warn = "#1e2210",
    vt_info = "#081420",
    vt_hint = "#081420",

    -- ── Terminal ANSI ──────────────────────────────────────────────────────
    t = {
      black    = "#080e14",  black_br  = "#1a3040",
      red      = "#8a5060",  red_br    = "#3a1820",
      green    = "#4a8878",  green_br  = "#183028",
      yellow   = "#7a8860",  yellow_br = "#303818",
      blue     = "#4a9ab8",  blue_br   = "#183848",
      magenta  = "#6a6098",  magenta_br= "#281840",
      cyan     = "#5aaab8",  cyan_br   = "#183848",
      white    = "#90aac0",  white_br  = "#c8dce8",
    },
}
