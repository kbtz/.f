package.path = 
	vim.fn.stdpath 'config' .. '/?;'
	.. package.path

require 'meta'

use {conf,bind,lang,rune}
