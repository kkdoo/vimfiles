## Install

    git clone git@github.com:kkdoo/vimfiles.git ~/.vim
    cd ~/.vim
    git submodule update --init
    echo "source ~/.vim/vimrc" > ~/.vimrc
    mvim -c "BundleInstall"

## Update

From vim run:

    :BundleInstall!
    :BundleClean

*Remark:* press **u** after updates complete to see the changelog of all updated bundles.

