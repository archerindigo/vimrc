# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]
Nil

## \[1.0.0\] 2021-06-01

From this version I switched to sonokai as my default color theme and start fully adopt into true-color terminal environment. Therefore from now on the configuration may not work that well in 256-color terminals. If you encounter color problem in older terminals, you may try switching to the 256-color color scheme I used (e.g. wombat256i) or use my previous configuration (<1.0) instead.

### Added

- New color scheme: sonokai, one
    - sonokai with maia style would be the default color scheme
- Instructions on installing the configuration for sudo vim
- Instructions on updating plugins
- More tips on usage
- More troubleshooting instructions
- New screenshots

### Changed

- Updated plugins:
    - gv (72dc64d -> 5f902f4)
    - lightline (c172131 -> d5cea5b)
    - nerdtree (6.7.11 -> 6.10.9)
    - nerdtree-git (f522a09 -> 4524fb4)
    - tagbar (2.7 -> 3.0.0)
    - vim-fugitive (v3.2 -> v3.3)
- Turn on termguicolors for true color support

### Removed

- Dropped color schemes: jellybeans, molokai, peaksea, wombat256mod

### Fixed

- Fixed submodule reference of gv and vim-tldr. They can now be cloned correctly

## \[0.5.0\] 2020-05-20

### Added

* Added vim-tldr. This allow user to read simplified man pages.

### Changed

- Updated nerdtree from 5.0.0 to 6.7.11
- Updated vim-fugitive from v2.4 to v3.2
- Replaced gitv with gv.vim, which is better
- Use `Ctrl-h/l` to switch tab instead of `Ctrl-Left/Right`

### Fixed

- Fixed mouse mode problem in tmux

## \[0.4.1\] 2020-02-10

### Fixed

- Plugins not checked-out due to missing sub-module information

## \[0.4.0\] 2020-02-10

### Added

* Add vim-indent-guides plugin

### Changed

- Replace taglist plugin with tagbar
- Update other plugins to newer version
- Not to enforce Source Code Pro font

## [0.3.0] 2018-10-15
### Added
- Added the simpler Ctrl-C, Ctrl-X, Ctrl-P, Ctrl-V shortcut keys as system clipboard copy, cut and paste respectively
- Added gitv v1.3.1 to support more git operations within vim
- Added optional config for recommended font (Source Code Pro)

### Changed
- Enabled copy-on-select in gvim
- nerdtree uses v5.0.0 instead of master
- vim-fugituve uses v2.4 instead of master
- Other plugins updated to sync with master
- Updated screenshots

### Fixed
- Fixed plugins not downloaded due to missing .gitmodules

## [0.2.0] - 2018-06-07
### Added
- This changelog
- Content of vim-fugitive
- F7 shortcut to create ctags file

### Changed
- Enabled the toolbar in gvim
- Updated lightline, nerdtree

## [0.1.0] - 2018-01-04
### Added
- vim-fugitive plugin
- Highlight current line

## [0.0.1] - 2017-08-19
### Added
- Screenshot to README

## [0.0.0] - 2017-08-16
Initial commit
