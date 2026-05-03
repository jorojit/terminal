# Install Windows Terminal
https://apps.microsoft.com/detail/9n0dx20hk701?hl=bg-BG&gl=BG

# Install Kubectl
- curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
- curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
- echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
- sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
- kubectl version --client

# Install WSL
- wsl --install
- reboot
- wsl --install -d Ubuntu

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
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
git clone https://github.com/Pilaton/OhMyZsh-full-autoupdate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate


# Starship Prompt
curl -sS https://starship.rs/install.sh | sh

# Install Helm
sudo apt-get install curl gpg apt-transport-https --yes
curl -fsSL https://packages.buildkite.com/helm-linux/helm-debian/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/helm.gpg] https://packages.buildkite.com/helm-linux/helm-debian/any/ any main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

# Install Docker Desktop
https://docs.docker.com/desktop/setup/install/windows-install/


# Nerd Fonts - Hack font (via git)
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh Hack

# Nerd Fonts - Hack font (via homebrew)
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```
- **Nerd Font**: JetBrainsMono Nerd Font must be installed and set as the terminal font. The tmux status bar uses Nerd Font glyphs — without it, icons render as boxes.
  - Mac: `brew install --cask font-jetbrains-mono-nerd-font`
  - Linux: download from https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip


## Other Tools

# Install brew
- sudo apt install build-essential procps curl file git
- /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
- echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"' >> /home/joro/.zshrc
- eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
- sudo apt-get install build-essential
- brew install gcc

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
