#!/bin/bash ../../.port.sh
port=vim
version=8.1
workdir=vim81
useconfigure=true
configopts="--host=x86_64-k1om-linux --with-tlib=ncurses"
files="https://ftp.nluug.nl/pub/vim/unix/vim-8.1.tar.bz2 vim-8.1.tar.bz2 cbca219d11990d866976da309d7ce5b76be48b96"
depends="ncurses"
export vim_cv_toupper_broken="no"
export vim_cv_terminfo="yes"
export vim_cv_tgetent="zero"
export vim_cv_tty_group="wheel"
export vim_cv_tty_mode="0620"
export vim_cv_getcwd_broken="no"
export vim_cv_stat_ignores_slash="yes"
export vim_cv_memmove_handles_overlap="yes"
