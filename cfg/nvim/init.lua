-- path to config files
package.path =
	vim.fn.stdpath 'config' .. '/?;'
	.. package.path

require 'moon'

use { base, util, conf, misc, keys, auto }
