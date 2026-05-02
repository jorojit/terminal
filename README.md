# Install Windows Terminal
https://apps.microsoft.com/detail/9n0dx20hk701?hl=bg-BG&gl=BG

# Install Nerdfonts
https://www.nerdfonts.com/font-downloads

# Install WSL
wsl --install
reboot
wsl --install -d Ubuntu

# Install VSCode
https://code.visualstudio.com/download

# Install Zsh
copy .zshrc file
sudo apt update && sudo apt upgrade -y
sudo apt install zsh -y
chsh -s /usr/bin/zsh


# Setup Zsh/Starship

I use Zsh as my default shell, Oh-my-zsh for plugins and Startship for my prompt. The themes I have also require Nerd Fonts.

- Run the installation commands below
- copy .zshrc file and the directories into your `$HOME` directory
- you may need to tweak some settings and install extra dependencies to get it to work in your environment.  Refer to the documentation for Zsh, Oh-my-zsh and Startship prompt.

```
# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z

# Starship Prompt
curl -sS https://starship.rs/install.sh | sh

# Nerd Fonts - Hack font (via git)
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh Hack

# Nerd Fonts - Hack font (via homebrew)
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

## Other Tools

```
### Basic tools, nerdfont, fuzzy finders
sudo apt update
sudo apt install peco -y
# sudo apt install exa -y
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo apt install python3-pip
```

### Neo vim install
```
sudo apt install neovim -y
sudo apt install exuberant-ctags
```

# Cheatsheets - Frequently used commands

## Zsh-Z
```
z  # Searches frequently access directory
```
## FZF - Fuzzy Search
```
^r  # Searches command history
^t  # Searches directories
```

## Ghostty + Tmux

Ghostty is configured to auto-start a tmux session on launch. The tmux config uses Catppuccin Mocha theme with Nerd Font glyphs for the status bar.

**Requirements:**
- [Ghostty](https://ghostty.org)
- JetBrainsMono Nerd Font

```bash
# Mac
brew install --cask font-jetbrains-mono-nerd-font

# Linux
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip && fc-cache -fv
```

Set `JetBrainsMono Nerd Font` as your terminal font, otherwise status bar icons will render as boxes.

## Tmux
```
tmux new -s <session name>  # create
tmux a -s <session name>    # attach
tmux kill-session -a  	    # kill all sessions but current
```

Sessions 
	-> Windows 
		-> Panes

^a commands: (^b is rebound to ^a in my tmux cnfg)
### Sessions
```
:new -s <session name>
s	# choose session
$	# rename session
d 	# detach session
```


### Windows
```
c 	# creates window
w 	# preview window
, 	# rename window
& 	# close window
```

### Panes
```
% 	   # right
" 	   # bottem
arrows 	   # switch between panes
z 	   # toggle zoom
x 	   # close current pane
! 	   # convert pane into window
```

### Re-read config
```
:source-file ~/.tmux.conf
```
