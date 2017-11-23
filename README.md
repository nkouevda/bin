# git-util

Various `git` utilities.

## Installation

To `cp` all utilities to `~/bin`:

    make

To create symbolic links instead of copying, use `ln=1`:

    make ln=1

To install selectively, specify the desired utilities:

    make git-fzf

To install in a different directory, set `prefix`:

    make prefix=/usr/local

## License

Licensed under the [MIT License](http://www.opensource.org/licenses/MIT).
