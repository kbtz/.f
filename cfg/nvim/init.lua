cfg = vim.fn.stdpath 'config' 
package.path = cfg .. '/?;' .. package.path

require 'base'
use { vars, conf, term, bind, lang, rune, auto }
