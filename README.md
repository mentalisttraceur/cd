# `cdexec`

`cdexec` fills the gaps where `cd` (or `pushd`
and `popd`) is awkward or cannot reach.

It changes directory, then executes another command.

For example, sometimes I want to do something inside a
`git` work tree while my shell is in another folder.
So instead of all this

    $ pushd path-to/my-repo
    $ git log
    $ popd

I just type

    $ cdexec path-to/my-repo git log
