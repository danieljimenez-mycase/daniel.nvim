if exists("current_compiler")
  finish
endif
let current_compiler = "mc_tsc"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=npx\ tsc\ --noEmit
CompilerSet errorformat=%f\ %#(%l\\,%c):\ %trror\ TS%n:\ %m,
		       \%trror\ TS%n:\ %m,
		       \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
