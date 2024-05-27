# vim-plug-periodic-status

A vim plugin for [vim-plug](https://github.com/junegunn/vim-plug) users which periodically runs PlugStatus for you so you can be aware if any plugins are outdated. It will run when you launch vim, but only once a week.

## Usage

```vim
autocmd VimEnter * call CheckAndCallPlugStatus()
```

## TODO (PRs welcome if you like)

- [ ] allow customizing path where cache file is stored
- [ ] allow customizing the refresh interval
