local _M = {}

_M.version = "0.8.2"

local util = require "resty.waf.util"

_M.phases = { access = 1, header_filter = 2, body_filter = 3 }

function _M.is_valid_phase(phase)
	return util.table_has_key(phase, _M.phases)
end

return _M
