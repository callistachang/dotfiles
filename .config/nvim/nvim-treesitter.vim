"Install all maintained treesitter configs
lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "python", "dart", "css", "fish", "go", "gomod",
        "bash", "dockerfile", "html", "javascript", "java",
        "json", "prisma", "python", "rust", "scss", "svelte",
        "vue", "toml", "vim", "rst", "vue", "yaml"
    },
    sync_install = false, 
    highlight = {
        enable = true
    },
}
EOF
