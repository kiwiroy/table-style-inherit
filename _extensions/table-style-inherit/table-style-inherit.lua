if PANDOC_VERSION == nil then -- if pandoc_version < 2.1
  error("ERROR: pandoc >= 2.1 required for table-style-inherit.lua filter")
end

local function table_style_inherit(el)
  if el.attr.attributes then
    for k, v in pairs(el.attr.attributes) do
      if k:match "custom%-style" then
        local content = el.content
        el.content = content:walk {
          Table = function(_)
            _.attr.attributes[k] = v
            return _
          end
        }
        if #content == 1 then
          -- remove the style from the Div
          el.attr.attributes[k] = nil
        end
      end
    end
  end
  quarto.log.output(el.content[1].attr)
  quarto.log.output(el.attr)
  return el
end

return {{Div = table_style_inherit}}
