# Requirements

- **Ghostty**: terminal emulator, configured to auto-start tmux on launch.

- **tmux**: status bar uses Catppuccin Mocha theme (green accents). Config at `.tmux.conf`.

- **Aerospace**: macOS tiling window manager. Config at `code/.aerospace.toml`. Uses `alt` as the modifier key — avoid binding `alt+h/j/k/l` in other tools as aerospace owns these.

# Key Bindings (tmux)

Prefix is `C-a`.

| Key | Action |
|---|---|
| `C-a \` | Split horizontal |
| `C-a -` | Split vertical |
| `C-a r` | Reload config |
| `M-.` | Next window |
| `M-p` | Previous window |
| `C-a < / >` | Swap window left/right |
