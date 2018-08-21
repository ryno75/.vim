# Vim RC, config directory, pathogen, submodules, etc.
_It's the whole vim config she-bang._

## Getting Started

1. Clone this repo under your `$HOME` directory as `.vim`
    ```bash
    $ cd $HOME
    $ git clone https://github.com/ryno75/.vim.git
    ```

1. Create symlink of `.vim/.vimrc` as `.vimrc` under your `$HOME` dir
    ```bash
    $ ln -s $HOME/.vim/.vimrc $HOME/.vimrc
    ```

1. Fetch the submodules
    ```bash
    $ cd $HOME/.vim
    $ git submodule update --init
    ```

### Happy Vim'ing!
