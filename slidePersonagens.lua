
local fundo2 = canvas:new('midia/menu/tela2/fundo2.png')
local btnAmaSel = canvas:new('midia/menu/tela1/3a.png')
function findImagesSlide()
--    os.execute("find media/personagens -name *.jpg > imagelistSlide.txt")
--    os.execute("find media/personagens -name *.jpeg >> imagelistSlide.txt")
--    os.execute("find media/personagens -name *.bmp >> imagelistSlide.txt")
--    os.execute("find media/personagens -name *.gif >> imagelistSlide.txt")
--    os.execute("find media/personagens -name *.png >> imagelistSlide.txt")

    local imagesMenu = {}

    for line in io.lines("imagelistPer.txt") do
      print(#imagesMenu .. " - ".. line)
      table.insert(imagesMenu, line)
    end

    return imagesMenu
end

function showImage(images, index)
  if #images > 0 then
    canvas:drawRect('fill', 0, 0, canvas:attrSize());
    img = canvas:new(images[index])
     canvas:compose(0, 0, fundo2)
    canvas:compose(400,800, btnAmaSel)
    canvas:compose(105, 160, img)
   
   
    canvas:flush()
  end
end

function moveImageIndex(images, index, forward)
  if forward then
     index = index + 1
     if index > #images then
        index = 1
     end
  else
     index = index - 1
     if index <= 0 then
        index = #images
     end;
  end
  return index
end

local index = 1
local images = findImagesSlide()

function autoForward()
  index = moveImageIndex(images, index, true)
  showImage(images, index)
end


function handler(evt)

    showImage(images, index)
    print("Show Image: "..index)

    print("Evento disparado: " .. evt.class .. " " .. evt.type)
    if (evt.class == 'key' and evt.type == 'press') then

      if evt.key == "CURSOR_RIGHT" then
        index = moveImageIndex(images, index, true)
      elseif evt.key == "CURSOR_LEFT" then
         index = moveImageIndex(images, index, false)
     end

      if evt.key == "CURSOR_UP" then
        canvas:clear()
        canvas:flush()
        event.unregister(handler)
       loadfile("main.lua")("c")
        canvas:flush()

      end
      
    end
end

event.register(handler)

