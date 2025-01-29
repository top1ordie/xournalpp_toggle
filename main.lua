CHECK = false
function initUi()
  app.registerUi({
    ["menu"] = "Toggle pen/eraser",
    ["callback"] = "pen",
    ["accelerator"] = "e",
  })
end

function pen()
  if CHECK then
    app.uiAction({ ["action"] = "ACTION_TOOL_PEN" })
    CHECK = false
  else
    app.uiAction({ ["action"] = "ACTION_TOOL_ERASER" })
    CHECK = true
  end
end
