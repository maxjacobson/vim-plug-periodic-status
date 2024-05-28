function! CheckAndCallPlugStatus()
  let l:status_file = expand('~/.vim/vim-plug-status.txt')
  let l:current_time = localtime()

  if exists('g:vim_plug_periodic_status_interval_seconds')
    let l:check_interval = g:vim_plug_periodic_status_interval_seconds
  else
    let l:check_interval = 7 * 24 * 60 * 60
  endif

  if filereadable(l:status_file)
    let l:last_checked_time = getftime(l:status_file)
    if l:last_checked_time + l:check_interval > l:current_time
      return
    endif
  endif

  if exists(':PlugStatus')
    PlugStatus
    call system('touch ' . l:status_file)
  else
    echo "Where is vim-plug???"
  endif
endfunction

autocmd VimEnter * call CheckAndCallPlugStatus()
