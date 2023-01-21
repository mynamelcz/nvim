
let s:fontsize = 14
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


if exists(':GuiTabline')
    GuiTabline 0
endif

if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv



noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>

