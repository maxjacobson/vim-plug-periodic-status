# vim-plug-periodic-status

A vim plugin for [vim-plug](https://github.com/junegunn/vim-plug) users which periodically runs PlugStatus for you so you can be aware if any plugins are outdated. It will run when you launch vim, but only once every 30 days.

## Usage

Install the plugin using vim-plug:

```vim
Plug 'maxjacobson/vim-plug-periodic-status'
```

It will automatically do the rest.

## Configuration

```vim
" To customize the interval to run every 365 days instead of every 30 days
let g:vim_plug_periodic_status_interval_seconds = 365 * 24 * 60 * 60
```

## TODO (PRs welcome if you like)

- [ ] allow customizing path where cache file is stored
