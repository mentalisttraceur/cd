# `cdexec`

`cdexec` fills the gaps where `cd` (or `pushd`
and `popd`) is awkward or cannot reach.

It goes into a given directory, then executes a given
command. If no command is given, it just checks if
going into the directory works.

For example, sometimes I want to do something inside a
`git` work tree while my shell is in another folder,
and I find it much faster and more ergonomic to type

```sh
$ cdexec path-to/my-repo git log
```

instead of something like


```sh
$ (cd path-to/my-repo && git log)
```
