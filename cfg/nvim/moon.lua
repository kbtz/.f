-- include extensionless config files
package.path = vim.fn.stdpath'config' .. '/?;' .. package.path

-- basic bare words
setmetatable(_G, { __index = function(_, key) return key end })

function use(files)
	local yue = require 'yue'
	for _, file in next, files do
		yue(file)
	end
end
