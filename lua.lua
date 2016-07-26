function handler(evt)
    local s = ""
    for k, v in pairs(evt) do
        print("\t\t",k,v)
        s = s .. k .. "=" .. v .. "; "
    end

    canvas:attrFont("vera", 14)
    canvas:attrColor(255, 255, 255, 255)
    local largura, altura = canvas:attrSize()
    canvas:drawRect("fill", 0, 0, largura, altura)
    canvas:attrColor(255, 0, 0, 255)
    canvas:drawText(10,10,s)
    canvas:flush()
end

event.register(handler)
