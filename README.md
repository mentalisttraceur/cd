# `cdexec`

`cdexec` fills the gaps where `cd` (or `pushd`
and `popd`) is awkward or cannot reach.

It goes into a given directory, then executes a given
command.  If no command is given, it just checks if
going into the directory works.

For example, sometimes I want to do something inside a
`git` work tree while my shell is in another folder.
So instead of all this

    $ pushd path-to/my-repo
    $ git log
    $ popd

I just type

    $ cdexec path-to/my-repo git log
