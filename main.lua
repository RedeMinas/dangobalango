local argv = ...
print("argumentos:")
print(argv)

local fundo = canvas:new('midia/menu/tela1/fundo.png')
local logo  = canvas:new('midia/menu/tela1/0.png')
local btnVerm  = canvas:new('midia/menu/tela1/1.png')
local btnVerd  = canvas:new('midia/menu/tela1/2.png')
local btnAma  = canvas:new('midia/menu/tela1/3.png')
local btnAzul  = canvas:new('midia/menu/tela1/4.png')
local btnVermSel  = canvas:new('midia/menu/tela1/1a.png')
local btnVerdSel  = canvas:new('midia/menu/tela1/2a.png')
local btnAmaSel  = canvas:new('midia/menu/tela1/3a.png')
local btnAzulSel  = canvas:new('midia/menu/tela1/4a.png')
local posicao  = 0


local dx,dy = canvas:attrSize()

function menuPrincipal(argv)
    print("argumentos em menuPrincipal:")
    print(argv)
		canvas:clear()
        	canvas:flush()
		posicao = posicao + 1
		canvas:compose(0,0,fundo)
		canvas:compose(40,60,logo)
 
        if argv == 'a' then    
            canvas:compose(135,370,btnVermSel)
            canvas:compose(142,550,btnVerd)
            canvas:compose(142,680,btnAma)
            canvas:compose(145,840,btnAzul)
            canvas:flush()
        elseif argv == 'b' then
            canvas:compose(135,370,btnVerm)
            canvas:compose(142,550,btnVerdSel)            
            canvas:compose(142,680,btnAma)
            canvas:compose(145,840,btnAzul)
            canvas:flush()
        elseif argv == 'c' then
            canvas:compose(135,370,btnVerm)
            canvas:compose(142,550,btnVerd)
            canvas:compose(142,680,btnAmaSel)
            canvas:compose(145,840,btnAzul)
            canvas:flush()
        elseif argv == 'd' then
            canvas:compose(135,370,btnVerm)
            canvas:compose(142,550,btnVerd)
            canvas:compose(142,680,btnAma)       
            canvas:compose(145,840,btnAzulSel)
            canvas:flush()
        else 
            canvas:compose(135,370,btnVermSel)
        end
		canvas:compose(142,550,btnVerd)
		canvas:compose(142,680,btnAma)
		canvas:compose(145,840,btnAzul)
		canvas:flush()
end

menuPrincipal(argv)


function handler(evt)  


	 if (evt.class == 'key' and evt.type == 'press') then


      if evt.key == "CURSOR_DOWN" then      			
      		if posicao == 1 then
            	canvas:compose(135,370,btnVerm)
            	canvas:compose(142,550,btnVerdSel)
            	canvas:flush()
        	end
        	if posicao == 2 then        		
            	canvas:compose(142,550,btnVerd)
            	canvas:compose(142,680,btnAmaSel)
            	canvas:flush()
        	end
        	if posicao == 3 then
        	   canvas:compose(142,680,btnAma)
        	   canvas:compose(145,840,btnAzulSel)
        	   canvas:flush()
        	end
        	if posicao == 4 then
        		menuPrincipal()
        		posicao = 0
        		canvas:flush()
        	end
        		posicao = posicao + 1      
      elseif evt.key == "CURSOR_UP"  then
			posicao = posicao -1
         	if posicao == 1 then
            	canvas:compose(142,550,btnVerd)
            	canvas:compose(135,370,btnVermSel)
            	canvas:flush()
        	end        	
        	if posicao == 2 then
            	canvas:compose(142,680,btnAma)	
            	canvas:compose(142,550,btnVerdSel)        	
            	canvas:flush()
        	end
        	if posicao == 3 then
            	canvas:compose(145,840,btnAzul)	
            	canvas:compose(142,680,btnAmaSel)
            	canvas:flush()
        	end
        	if posicao == 0 then
				canvas:compose(135,370,btnVerm)
        		canvas:compose(145,840,btnAzulSel)	
        		posicao = 4
        		canvas:flush()
        	end
	end
        if evt.key == "ENTER"  then
			if posicao == 1 then
                event.unregister(handler)
        	   dicTupi  = dofile("slideDic.lua")
        	   canvas:flush()
        	end
         	if posicao == 2 then
                event.unregister(handler)
                gameDango = dofile("slideDic.lua")
                canvas:flush()
        	end
        	if posicao == 3 then
               event.unregister(handler)
        	   Personagens  = dofile("slidePersonagens.lua")
        	   canvas:flush()
        	end
        	if posicao == 4 then
                event.unregister(handler)
                Informacoes  = dofile("slideInfo.lua")
                canvas:flush() 
        	end
        end	
         
      
end
end

event.register(handler)
