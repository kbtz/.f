cfg = vim.fn.stdpath 'config' 
package.path = cfg .. '/?;' .. package.path

require 'base'
use { vars, conf, term, misc, bind, lang, rune, auto }
