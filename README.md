# My Tiny Vim Configuration

> Light tweaks for vim bringing fair enough enhancements to programmers.

This is my vim configuration for my daily programming and text editing usage. I configured my vim to be programming-friendly with suitable tweaks to the built-in features, interface, formatting, etc. The configuration I made would be easy to understand. The plugins I choose tend to be simple-to-use and practical. I don't mean to make a completely different editor or to make a fancy vim so I would keep everything simple and won't go far from typical vim practices.

I will update it from time to time. Feel free to clone/fork it if you find my configuration suitable for you.

GitLab (Main): https://gitlab.com/archerindigo/vimrc

GitHub (Mirror): https://github.com/archerindigo/vimrc

# Table of Content
- [Introduction](#introduction)
  - [Features and Objectives](#features-and-objectives)
  - [Screenshots](#screenshots)
  - [Environment](#environment)
  - [Plugins Included](#plugins-included)
  - [Color Schemes](#color-schemes)
- [Installation](#installation)
  - [Update](#update)
- [Usage Tips](#usage-tips)
  - [Transparent Background](#transparent-background)
  - [Switching Tab](#switching-tab)
  - [Save and Load Session](#save-and-load-session)
  - [Incremental Search](#incremental-search)
  - [Toggle NERDTree](#toggle-nerdtree)
  - [Toggle taglist](#toggle-taglist)
  - [Toggle Indent Guides](#toggle-indent-guides)
  - [Copy and Paste to System Clipboard](#copy-and-paste-to-system-clipboard)
  - [Recommended font](#recommended-font)
  - [Frequently used git commands in vim](#frequently-used-git-commands-in-vim)
  - [Check Tldr simplified man pages](#check-tldr-simplified-man-pages)
- [Troubleshooting](#troubleshooting)
  - [Taglist: Exuberant ctags (http://ctags.sf.net) not found in PATH. Plugin is not loaded.](#taglist-exuberant-ctags-httpctagssfnet-not-found-in-path-plugin-is-not-loaded)
  - [Tldr not working](#tldr-not-working)
  - [Colors look strange in tmux](#colors-look-strange-in-tmux)

## Introduction

### Features and Objectives

**Objectives:**

- To provide a nicer but remain simple interface
- To include simple-to-use and practical plugins
- To provide a programming-friendly environment
- Keep configuration easy-to-read and well explained

**Major features included:**

- Interface settings for more comfortable coding
- Formatting that match general programming needs
- Easier code exploration and navigation
- Easier file navigation
- Simple session save/load
- Support of git

You may look into `.vimrc` to get better understanding of what have set.

### Screenshots

![2 C++ files with tabs, nerdtree and taglist in gvim](/screenshots/0.3.0-1.png)
2 C++ files with tabs, nerdtree and taglist opened in gvim

![A markdown file opened in transparent terminal](/screenshots/0.3.0-2.png)
A markdown file opened in a transparent terminal

More in screenshots folder.

### Environment

The configuration should work well with Vim 7.3+.


I recently used the following terminals as well:

- xfce4-terminal 4.16
- gnome-terminal 40.0
- MobaXterm 21.1
- tmux 2.8

### Plugins Included

- [vim-plug](https://github.com/junegunn/vim-plug): A easy-to-use plugin manager.
- [lightline.vim](https://github.com/itchyny/lightline.vim): A light-weight but good-looking, powerful enough status line replacement.
- [NERDTree](https://github.com/scrooloose/nerdtree): A tree-view file explorer.
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin): An extension on top of NERDTree providing git status flags in the file explorer.
- [tagbar](https://github.com/majutsushi/tagbar): Provides outline of your code.
- [vim-indent-guides](https://github.com/valloric/vim-indent-guides): Add visual guides to indent levels.
- [fugitive.vim](https://github.com/tpope/vim-fugitive): A git wrapper.
- [gv.vim](https://github.com/junegunn/gv.vim): A repository viewer similar to gitk. Based on fugitive.
- [vim-tldr](https://github.com/wlemuel/vim-tldr): View simplified man pages within vim.

### Color Schemes

**Included in current release:**

- (Current default) [sonokai](https://github.com/sainnhe/sonokai): A variant of monokai which has better contrast and true color support. It also comes with various styles and good support of various languages.
- [one](https://github.com/rakr/vim-one): This color scheme is based on the popular Atom's One Dark theme. It has good support of various front-end languages.
- [wombat](https://github.com/vim-scripts/Wombat): My previous default scheme for gvim. The wombat color scheme is dim but colorful that would make syntax so distinguishable and easy on eyes. This original wombat scheme comes with solid background and is slightly yellowish, which is more suitable for GUI environment.
- [wombat256i](https://github.com/dsolstad/vim-wombat256i): My previous default scheme for command-line vim. It supports transparent background in terminal and the color is not that yellowish compare to the original version.

**Not included / Dropped but worth trying:**

* [molokai](https://github.com/tomasr/molokai): The long-living dark, vivid, very high contrast monokai 256-color scheme.
* [dracula](https://github.com/dracula/vim): A pretty interesting but yet practical dark-purplish color scheme.
* [jellybeans](https://github.com/nanotech/jellybeans.vim): Another dark and even more colorful scheme.
* [peaksea](https://github.com/vim-scripts/peaksea): This scheme is dark in background but light in syntax.

## Installation

1. Clone the repository:

Third-party repositories are included in this repository. Remember to use `--recursive` to pull them all!

```
git clone --recursive https://gitlab.com/archerindigo/vimrc.git
```

2. Replace your ~/.vimrc and ~/.vim


```
cp vimrc/.vimrc ~
cp -r vimrc/.vim/* ~/.vim/
```

The configuration will be applied to local profile only. If you want to make it system-wide effective (e.g. take effect in sudo vim), you should copy the content of `.vimrc` to `/etc/vim/vimrc`

**Make sudo to use the configuration and plugins**

In Linux, vim would load root account's configuration from `/root` so you can create links from there to your user configurations:

```
sudo ln -s /home/<your_username>/.vimrc /root/.vimrc
sudo ln -s /home/<your_username>/.vim /root/.vim
```

### Update

For stability, plugins and color schemes are initially downloaded as fixed version.

## Usage Tips

Belows are some customized usage and other usage tips for my configuration.

### Transparent Background

sonokai, one and wombat256i have transparent background support.

sonokai originally comes with solid background. To switch back to solid background, comment this line in `.vimrc`:

`let g:sonokai_transparent_background = 1`

### Switching Tab

Besides the original `gT` and `gt` keys, you can use `Ctrl-h` and `Ctrl-l` to switch between tabs. They work in normal mode only.

### Save and Load Session

You can save session by pressing `F2` and then type the file name. To load a session, you can press `F3` and type the file name. The default storage is `~/.vim/sessions/` .

Note that a session file not only contain the opened files and tabs, but also the configuration of vim. Loading it would override your existing vim settings.

### Incremental Search

In the past, I was not very comfortable with incremental search. When I was typing (copying) a term from the current screen, the screen keeps jumping around so it was difficult to take reference from the screen.

After getting familiar with the search current word commands (`Shift-3` and `Shift-8`), I am now confident to re-enable incremental search withoutbeing annoyed while I can know the search results sooner.

### Toggle NERDTree

Press `Ctrl-G` to toggle NERTree's explorer

### Toggle taglist

Press `F8` to toggle tagbar

### Toggle Indent Guides

Press `<Leader> + i + g` to toggle indent guides. `<Leader>` maybe the `\` key on your keyboard. You may also enable it by defult by uncommenting the line `let g:indent_guides_enable_on_vim_startup=1`

### Copy and Paste to System Clipboard

You can select text in visual mode and press `Ctrl-C` to copy or `Ctrl-X` to cut it into system clipboard. To paste the text, you can press `Ctrl-P` in normal mode or `Ctrl-V` in insert mode.

### Recommended font

It is recommended to use **Source Code Pro** size 10 as the font. You can uncomment `"set guifont=Source\ Code\ Pro\ 10"` in .vimrc to enforce the font in gvim. For vim you should set the terminal font by yourself.

### Frequently used git commands in vim

`:Gblame`: Open git blame.
`:Gdiff`: Check different between the current file edit and the last commit.
`:G` / `:Gstatus`: Check git status.
`:GV`: Open git graphical log.

Check [vim-fugitive](https://github.com/tpope/vim-fugitive) and[gv.vim](https://github.com/junegunn/gv.vim) for more information.

### Check Tldr simplified man pages

Simply type `:Tldr <entry>`

## Troubleshooting

### Taglist: Exuberant ctags (http://ctags.sf.net) not found in PATH. Plugin is not loaded.

ctags is missing in your machine. Please install it explicitly.

`sudo apt-get install ctags`

### Tldr not working

You may forgot to install the Tldr docs into your machine. Run the following command in vim to download/ update the docs:

`:TldrUpdateDocs`

### Colors look strange in tmux

tmux seldom work well in true color mode. I would suggest you to fallback to other 256-color color schemes such as `wombat256i`.
