if exists("current_compiler")
  finish
endif
let current_compiler = "mc_eslint"

CompilerSet makeprg=./script/linting/eslint_like_ci.sh
CompilerSet errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#
