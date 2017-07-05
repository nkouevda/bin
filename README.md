# git-util

Various `git` utilities.

## Installation

To `cp` all utilities to `~/bin`:

    make

To create symbolic links instead of copying, use `LN=1`:

    make LN=1

To install selectively, specify the desired utilities:

    make git-fzf

To install in a different directory, set `prefix`:

    make prefix=/usr/local
