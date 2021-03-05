function! Comment()
    if (mode() == "n" )
          execute "Commentary"
    else    
          execute "'<,'>Commentary"
    endif
endfunction
nnoremap <silent> <space>/ :call Comment()<CR>
