package.path = 
	vim.fn.stdpath 'config' .. '/?;'
	.. package.path

require 'meta'

use {opts,keys,lang,rune}
