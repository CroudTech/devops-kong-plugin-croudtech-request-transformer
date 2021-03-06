local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.croudtech-request-transformer.access"

local RequestTransformerHandler = BasePlugin:extend()

function RequestTransformerHandler:new()
  RequestTransformerHandler.super.new(self, "croudtech-request-transformer")
end

function RequestTransformerHandler:access(conf)
  RequestTransformerHandler.super.access(self)
  access.execute(conf)
end

RequestTransformerHandler.PRIORITY = 801
RequestTransformerHandler.VERSION = "0.1.0"

return RequestTransformerHandler
