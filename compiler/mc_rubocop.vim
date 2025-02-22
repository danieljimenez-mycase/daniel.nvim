if exists("current_compiler")
  finish
endif
let current_compiler = "mc_rubocop"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=./script/linting/rubocop_like_ci.sh
CompilerSet errorformat=%f:%l:%c:\ %t:\ %m,
		       \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
