
let s:fontsize = 18
" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    " GuiFont! UbuntuMono Nerd Font:h.s:fontsize
  :execute "GuiFont! UbuntuMono Nerd Font:h" . s:fontsize
endif

function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! UbuntuMono Nerd Font:h" . s:fontsize
endfunction


noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>

