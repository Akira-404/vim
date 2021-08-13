let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let AutoPairsMapBS =  1 
let VM_mouse_mappings =  0 
let AutoPairsShortcutBackInsert = "<M-b>"
let VM_default_mappings =  1 
let NERDUsePlaceHolders =  1 
let AutoPairsLoaded =  1 
let AutoPairsShortcutToggle = "<M-p>"
let AutoPairsMapCR =  1 
let UltiSnipsJumpForwardTrigger = "<c-j>"
let AutoPairsMapCh =  0 
let UltiSnipsRemoveSelectModeMappings =  1 
let NERDCommentEmptyLines =  0 
let Illuminate_highlightPriority =  -1 
let UltiSnipsExpandTrigger = "<tab>"
let VM_persistent_registers =  0 
let AutoPairsShortcutFastWrap = "<M-e>"
let NERDMenuMode =  3 
let NERDDefaultNesting =  1 
let Illuminate_highlightUnderCursor =  1 
let VM_highlight_matches = "underline"
let NERDToggleCheckAllLines =  1 
let NERDSpaceDelims =  1 
let NERDLPlace = "[>"
let NERDDefaultAlign = "none"
let NERDCreateDefaultMappings =  1 
let Illuminate_delay =  0 
let VM_show_warnings =  0 
let UltiSnipsEnableSnipMate =  1 
let NERDCommentWholeLinesInVMode =  0 
let UltiSnipsJumpBackwardTrigger = "<c-k>"
let NERDRPlace = "<]"
let AutoPairsShortcutJump = "<M-n>"
let AutoPairsMapSpace =  1 
let NERDRemoveExtraSpaces =  0 
let NERDSuppressWarnings =  0 
let NERDRemoveAltComs =  1 
let AutoPairsFlyMode =  0 
let AutoPairsMultilineClose =  1 
let NERDTrimTrailingWhitespace =  0 
let UltiSnipsListSnippets = "<c-tab>"
let NERDBlockComIgnoreEmpty =  0 
let AutoPairsCenterLine =  1 
let NERDDisableTabsInBlockComm =  0 
let VM_check_mappings =  1 
let NERDCompactSexyComs =  0 
let NERDAllowAnyVisualDelims =  1 
let AutoPairsSmartQuotes =  1 
let VM_theme = "ocean"
let UltiSnipsEditSplit = "normal"
let AutoPairsMoveCharacter = "()[]{}\"'"
let AutoPairsWildClosedPair = ""
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
file \[Plugins]
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
