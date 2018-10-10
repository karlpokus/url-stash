# url-stash
Filter a stash of urls to open in default browser. Probably only works on Mac OS due to the `open` cmd.

# use case
You have lots of urls that you need to access frequently but can't remember. Some of the urls may even require basic auth. Most of the urls have an implicit hierarchical structure like `$COMPANY/$APP` or `$APP/$ENV/$PART` which makes them suitable to be kept in a file system tree. The tree will provide context when selecting the url from a list.

# requirements
- [peco](https://github.com/peco/peco)
- fully qualified urls in `$DATADIR`

# usage

```bash
# $DATADIR is a path
$ ./urst $DATADIR
```

The script greps on `http` in `$DATADIR` and pipes the list to peco where you filter by context and select 1+ urls to open in default browser. Optionally add the script to your `$PATH` or make an alias for easy access.

# todos
- [x] mvp
- [ ] example
- [ ] bundle peco?
- [ ] option to pipe to clipboard
- [ ] option to use spotlight on Mac OS
