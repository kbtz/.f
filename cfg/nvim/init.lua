cfg = vim.fn.stdpath 'config' 
package.path = cfg .. '/?;' .. package.path

require 'meta'
use { conf, bind, lang, rune }

