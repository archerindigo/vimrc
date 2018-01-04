# My Tiny Vim Configuration

Hi! I am a vim user for few years and recently I am using it more often and starting to tweak this powerful editor to make it even more powerful and convenient for my programming jobs. 

This is my current vim configuration and I am still improving it from time to time. Feel free to clone it if you find my configuration suitable for you.

My tweak tends to be simple to let everyone adopt it easily. That means while I am expending the vim with more useful functionalists, I would try to keep the control experience as natural, no fancy add-on, no complicated feature.

## Manual Installation

1. Clone the repository:

<pre>
git clone https://github.com/archer1609/vimrc.git
</pre>

2. Replace your ~/.vimrc and ~/.vim

<pre>
cp vimrc/.vimrc ~
cp -r vimrc/.vim/* ~/.vim/
</pre>

3. (Optional) Update plugins

<pre>
# Open vim
vim 
# Type in command mode:
:PlugUpdate
</pre>

## Screenshots
![Tab and Split Windows](/screenshots/1.png)

![Nice Color](/screenshots/2.png)

## Plugins Included

* [vim-plug](https://github.com/junegunn/vim-plug): A easy-to-use plugin manager.
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light-weight but good-looking and powerful enough status line replacement.
* [NERDTree](https://github.com/scrooloose/nerdtree): A tree-view file explorer.
* [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin): A extension on top of NERDTree providing git status flags in the file explorer.
* [taglist](https://github.com/vim-scripts/taglist.vim): Provides overview of the structure of the code.
* [fugitive.vim](https://github.com/tpope/vim-fugitive): A git wrapper

## Recommended Color Schemes

* [wombat256i](https://github.com/dsolstad/vim-wombat256i): My default scheme for vim. The dim but colorful syntax highlight could make you differentiate the components of your code easily. It also supports transparent background in terminal.
* [wombat](https://github.com/vim-scripts/Wombat): My default scheme for gvim.
* [jellybeans](https://github.com/nanotech/jellybeans.vim): Another dark and even more colorful scheme.
* [molokai](https://github.com/tomasr/molokai): A dark scheme but has higher contrast.
* [peaksea](https://github.com/vim-scripts/peaksea): This scheme is dark in background but light in syntax.

## Usage Tips

Here are the customized usage in my configuration:

__Transparent Background__

The wombat256i color scheme supports transparent background in 256-color so you can use vim with transparent background in terminal.

__Switching Tab__

> You can use __Ctrl-Up__ and __Ctrl-Down__ to switch between tabs. They works in normal mode only for safety.

__Save and Load Session__

> You can save session by pressing __F2__ and then type the file name. To load a session, you can press __F3__ and type the file name. The default path is __~/.vim/sessions/__ .

__Toggle NERDTree__

> Press __Ctrl-g__ to toggle NERTree's explorer

__Toggle taglist__

> Press __F8__ to toggle taglist

## Troubleshooting

__Taglist: Exuberant ctags (http://ctags.sf.net) not found in PATH. Plugin is not loaded.__

Reason: ctags is missing
<pre>sudo apt-get install ctags</pre>
