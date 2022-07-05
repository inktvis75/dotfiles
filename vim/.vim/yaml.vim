" indentation rules for yaml
augroup yaml
  autocmd!
  autocmd FileType yaml set tabstop=2 shiftwidth=2 expandtab 
  autocmd FileType yaml set indentkeys-=0# indentkeys-=<:>
  autocmd FileType yaml set foldmethod=indent foldlevel=2
augroup END
