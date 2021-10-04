-- location of the repo
-- use '.' instade of '/'
local dimensionsDir = "."
-- local dimensionsDir = "dimensions" .. "."

-- inspect for debugging
inspect = require(dimensionsDir .. "inspect")

-- require this file after setting and requireing all other variable and script
require(dimensionsDir .. "dimensionsRc")
