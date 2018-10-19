package = "kong-croudtech-request-transformer"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.1.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!

-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "kong-croudtech-request-transformer"

supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/CroudTech/devops-kong-plugin-kong-croudtech-request-transformer.git",
  tag = "0.1.0",
  dir = "kong-croudtech-request-transformer"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins.croudtech-request-transformer.handler"] = "kong/plugins/croudtech-request-transformer/handler.lua",
    ["kong.plugins.croudtech-request-transformer.schema"] = "kong/plugins/croudtech-request-transformer/schema.lua",
    ["kong.plugins.croudtech-request-transformer.access"] = "kong/plugins/croudtech-request-transformer/access.lua",
  }
}

