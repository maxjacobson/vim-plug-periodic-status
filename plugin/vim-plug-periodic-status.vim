function! CheckAndCallPlugStatus()
  let l:status_file = expand('~/.vim/vim-plug-status.txt')
  let l:one_week = 7 * 24 * 60 * 60
  let l:current_time = localtime()

  if filereadable(l:status_file)
    let l:last_checked_time = getftime(l:status_file)
    if l:last_checked_time + l:one_week > l:current_time
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
