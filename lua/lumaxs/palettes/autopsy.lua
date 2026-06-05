-- "Autopsy — luz fluorescente apagada, rosa hospitalar desbotado"

return {
    -- ── Required ───────────────────────────────────────────────────────────
    bg       = "#050507",
    fg       = "#a8a8b0",
    keyword  = "#c9607a",   -- rosa oxidado
    func     = "#a84f65",   -- rosa mais escuro/sujo
    type_    = "#888898",   -- cinza frio
    string   = "#9e5c6e",   -- rosa terra
    number   = "#d97090",   -- rosa levemente mais vivo
    comment  = "#35353f",
    operator = "#555560",

    -- ── Backgrounds ───────────────────────────────────────────────────────
    surface      = "#0c0c0f",
    line         = "#101015",
    selection    = "#1e1018",
    border       = "#1a1a20",
    border_focus = "#c9607a",
    bg_dark      = "#030305",
    bg_hover     = "#180f15",
    bg_active    = "#221020",
    float_bg     = "#0f080d",
    float_border = "#a84f65",

    -- ── Foregrounds ───────────────────────────────────────────────────────
    fg_muted     = "#606070",
    fg_subtle    = "#3a3a48",
    fg_disabled  = "#252530",
    line_nr      = "#2e2e38",
    line_nr_active = "#c9607a",

    -- ── Extra syntax ──────────────────────────────────────────────────────
    property   = "#909098",
    constant   = "#d97090",
    namespace  = "#787888",
    punct      = "#484858",
    accent     = "#c9607a",
    string_esc = "#d97090",
    string_re  = "#9e5c6e",
    string_spec = "#d97090",

    -- ── Semantic ──────────────────────────────────────────────────────────
    ok      = "#4a6e4a",
    error   = "#b83355",
    warn    = "#a06840",
    info    = "#607880",
    hint    = "#c9607a",
    git_mod = "#a06840",

    -- ── Diff ──────────────────────────────────────────────────────────────
    diff_add_bg = "#081208",
    diff_del_bg = "#180810",
    diff_chg_bg = "#0e0e18",
}
