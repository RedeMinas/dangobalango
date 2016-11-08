
local fundo2 = canvas:new('midia/menu/tela2/fundo2.png')
local btnVermSel = canvas:new('midia/menu/tela1/1a.png')


function findImagesSlide()
--    os.execute("find media/tupi -name *.jpg > imagelistSlide.txt")
 --   os.execute("find media/tupi -name *.jpeg >> imagelistSlide.txt")
  --  os.execute("find media/tupi -name *.bmp >> imagelistSlide.txt")
   -- os.execute("find media/tupi -name *.gif >> imagelistSlide.txt")
    --os.execute("find media/tupi -name *.png >> imagelistSlide.txt")

    local imagesMenu = {}

    for line in io.lines("imagelistDic.txt") do
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
    canvas:compose(400,800, btnVermSel)
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

      if evt.key == "EXIT" then

  event.unregister(handler)
        canvas:clear()
        canvas:flush()
        assert(loadfile("main.lua")("a"))
	
        --sair = dofile("main.lua")
        canvas:flush()

      end
      
    end
end

event.register(handler)

