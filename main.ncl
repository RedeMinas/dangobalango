<?xml version="1.0" encoding="UTF-8"?>
	<!--PROJETO: Dangobalando
	EMPRESA: Rede Minas
	AUTOR:	 Alessandro Cézar-->
<ncl id="Dango_Balango">
    <head>

        <transitionBase>
            <transition id="efeitoInicio" type="fade" dur="0.8s"/>
            <transition id="efeitoFim"    type="barWipe" dur="0.8s"/>
        </transitionBase>

        <regionBase>
        		<region id="rgPixelControle" left="50%" top="50%" width="1%" height="1%" zIndex="5">
		        	
		        </region>
        	
                <region id="fundoReg"                                  	width="100%"   height="100%"   zIndex="2"/>
                <region id="fundoReg2"                                  width="100%"   height="100%"   zIndex="4"/>
                <region id="rgNavegacao"                                width="100%"   height="9.63%"  zIndex="5"/>
                
                <region id="rgLogoMenu"      left="7.50%"   top="2%"     width="26%"    height="31.20%" zIndex="3"/>
                <region id="rgFrame"         left="5%"      top="6.7%"   width="18.5%"  height="18.5%"  zIndex="3"/>
                <region id="intReg"          left="92.5%"   top="91.7%"  width="5.07%"  height="6.51%"  zIndex="3"/>
                
                <region id="rgMenu1"         left="7.50%"   top="33.1%"  width="26%"    height="18.52%" zIndex="3"/>
                <region id="rgMenu2"         left="7.50%"   top="51%"    width="26%"    height="11.67%" zIndex="3"/>
                <region id="rgMenu3"         left="7.50%"   top="62%"    width="26%"    height="14.72%" zIndex="3"/>
                <region id="rgMenu4"         left="7.50%"   top="76%"    width="26%"    height="17.20%" zIndex="3"/>

                <region id="rgIconMenu"      left="89.5%"   top="3.7%"   width="8.45%"  height="6.7%"     zIndex="5"/>
                <region id="rgScreen"                                 	width="100%"   height="100%"   	  zIndex="5"/>
                <region id="rgVoltar"   	 left="50%"    top="84%"    width="8.142%"  height="9%" 	  zIndex="5"/>
                <region id="rgBtnSair"       left="2%"      top="85%"    width="8%"     height="8%"       zIndex="5"/>
				<region id="rgMenunT"   	 left="5%"     top="4%"     width="17%"  height="16%"  		  zIndex="5"/>
				
                <region id="rgLua" 	 left="4.9%"   top="27.5%" width="60%" 	 height="60.648%" zIndex="5"/>
                
                
                <region id="rgFundoGame2"    left="57.9%"  top="45%"     width="31%"     height="45%"     zIndex="4"/>
                <region id="rgFundoGame"     left="57.3%"  top="45%"     width="35%"     height="45%"     zIndex="3"/>
            
        </regionBase>
        
        <descriptorBase>
            <!--<descriptor id="voltarDesc"     region="rgVoltar"/>-->
            <descriptor id="dePixelControle" region="rgPixelControle">
            	
            </descriptor>
            <descriptor id="menunTDesc"    region="rgMenunT"/>
            <descriptor id="fundoDesc"      region="fundoReg"/>
            <descriptor id="fundoDesc2"     region="fundoReg2"/>
            <descriptor id="screenDesc"     region="rgScreen"/>
            <descriptor id="deLogo"         region="rgLogoMenu"/>
            <descriptor id="dFundoGame2"    region="rgFundoGame2"/>
            <descriptor id="deIconMenu"     region="rgIconMenu"/>
            <descriptor id="deMenu1"        region="rgMenu1"  focusIndex="2" moveDown="3" 
            	moveUp="5"  focusBorderWidth="0" focusSelSrc="media/menu/tela1/1.png" focusSrc="media/menu/tela1/1a.png">
            </descriptor>
            <descriptor id="deMenu2"        region="rgMenu2"  focusIndex="3" moveDown="4" 
	            moveUp="2"  focusBorderWidth="0" focusSelSrc="media/menu/tela1/2.png" focusSrc="media/menu/tela1/2a.png">
            </descriptor>
            <descriptor id="deMenu3"        region="rgMenu3"  focusIndex="4" moveDown="5" 
	            moveUp="3"  focusBorderWidth="0" focusSelSrc="media/menu/tela1/3.png" focusSrc="media/menu/tela1/3a.png">
            </descriptor>
            <descriptor id="deMenu4"        region="rgMenu4"  focusIndex="5" moveDown="2" 
	            moveUp="4"  focusBorderWidth="0" focusSelSrc="media/menu/tela1/4.png" focusSrc="media/menu/tela1/4a.png">
            </descriptor>
            <descriptor id="dLuaSlideDic"   region="rgLua" focusIndex="6" focusBorderWidth="0"  />
            <descriptor id="dLuaGameDango"  region="rgLua" focusIndex="7" focusBorderWidth="0"  />
            <descriptor id="dLuaSlidePerso" region="rgLua" focusIndex="8" focusBorderWidth="0"  />
            <descriptor id="dLuaSlideInfo"  region="rgLua" focusIndex="9" focusBorderWidth="0"  />
            <descriptor id="dNavegacao"     region="rgNavegacao"/>
            <descriptor id="dFundoGame"     region="rgFundoGame"     transIn="efeitoInicio" transOut="efeitoFim">
            	<descriptorParam name="transparency" value="0.1"/>
            </descriptor>
            
        </descriptorBase>
        
        <connectorBase>
            <importBase documentURI="connector.ncl" alias="conBase"/>
        </connectorBase>
        
    </head>
    
    <body>
        <port id="entry" component="mediaVideo"/>
        
        <media id="menu1newTab"	src="media/menu/tela2/abaVermelha.png" descriptor="menunTDesc" />
        <media id="menu2newTab"	src="media/menu/tela2/abaVerde.png"    descriptor="menunTDesc" />
        <media id="menu3newTab"	src="media/menu/tela2/abaAmarela.png"  descriptor="menunTDesc" />
        <media id="menu4newTab"	src="media/menu/tela2/abaAzul.png" 	   descriptor="menunTDesc" />
        
        <media id="dicionario"  src="slideDic.lua" 			   descriptor="dLuaSlideDic"/>
        <media id="jogos"  		src="media/gamedango/game.lua" descriptor="dLuaGameDango"/>
        <media id="personagens" src="slidePersonagens.lua" 	   descriptor="dLuaSlidePerso"/>
        <media id="informacoes" src="slideInfo.lua"			   descriptor="dLuaSlideInfo"/>
        
        <media id="fundo"      src="media/menu/tela1/fundo.png" 	 descriptor="fundoDesc"/>
        <media id="fundo2"     src="media/menu/tela2/fundo2.png"     descriptor="fundoDesc2"/>
        <media id="navegacao2" src="media/menu/tela2/navegacao2.png" descriptor="dNavegacao"/>
        
        	
        
        <media id="mediaVideo" src="sbtvd-ts://video" descriptor="screenDesc">
            <area id="aIcone" begin="2s"/>
            <property name="bounds"/>
            <property name="zIndex" value="3"/>
        </media>
        
        <media id="icone" src="media/menu/icon.png" 				descriptor="deIconMenu"/>
        <media id="fundoGame" src="media/fundoPreto.jpg" 			descriptor="dFundoGame"/>
        <media id="logo" src="media/menu/tela1/0.png" 				descriptor="deLogo"/>
        <media id="menu1"  src="media/menu/tela1/1.png" 			descriptor="deMenu1"/>
        <media id="menu2"  src="media/menu/tela1/2.png" 			descriptor="deMenu2"/>
        <media id="menu3"  src="media/menu/tela1/3.png" 			descriptor="deMenu3"/>
        <media id="menu4"  src="media/menu/tela1/4.png" 			descriptor="deMenu4"/>
        <media id="settings" type="application/x-ncl-settings">
        	<property name="service.currentKeyMaster" value=""/>
        	<property name="service.currentFocus" value=""/>
        </media>
        
        	<!--INICIO-->
         <link  id="Video" xconnector="conBase#onBeginStart_delay">
            <bind role="onBegin" component="mediaVideo"/>
            <bind role="start" component="icone">           
                <bindParam name="delay" value="0.5s"/>
            </bind>
        </link>

        <link  id="MenuInterativo" xconnector="conBase#onKeySelectionSetStopStart">
            <bind role="onSelection" component="icone">
            <bindParam name="keyCode" value="ENTER"/>
            </bind> 
            <bind role="start" component="fundo"/>
            <bind role="start" component="menu1"/>
            <bind role="start" component="menu2"/>
            <bind role="start" component="menu3"/>
            <bind role="start" component="menu4"/>
            <bind role="start" component="navegacao2"/>
            <bind role="start" component="logo"/>           
            <bind role="stop" component="icone"/>
            
            <bind role="set" component="mediaVideo" interface="bounds">
                <bindParam name="var" value="37%, 4%, 60%, 60%"/>
            </bind>
                 
        </link>
        
        <!--INICIA MENU 1-->
        <link xconnector="conBase#onSelectionStartStop">
        	<bind role="onSelection" component="menu1"/>
        	
        	<bind role="start" component="menu1newTab"/>
        	<bind role="start" component="dicionario"/>
        	<bind role="stop" component="navegacao2"/>
        </link>
        
        <!--INICIA MENU 2-->
        <link xconnector="conBase#onSelectionStartStop">
        	<bind role="onSelection" component="menu2"/>
        	<bind role="start" component="menu2newTab"/>
        	<bind role="start" component="jogos"/>
        	<bind role="stop" component="navegacao2"/>
        </link>
        
        <!--INICIA MENU 3-->
        <link xconnector="conBase#onSelectionStartStop">
        	<bind role="onSelection" component="menu3"/>
        	<bind role="start" component="menu3newTab"/>
        	<bind role="start" component="personagens"/>
        	<bind role="stop" component="navegacao2"/>
        	
        </link>
        
        <!--INICIA MENU 4-->
        <link xconnector="conBase#onSelectionStartStop">
        	<bind role="onSelection" component="menu4"/>
        	
        	<bind role="start" component="menu4newTab"/>
        	<bind role="start" component="informacoes"/>
        	<bind role="stop" component="navegacao2"/>
        	
        </link>
        
        <!--PARA APLICAÇÕES LUA E VOLTA AO MENU INICIAL AO APERTAR EXIT-->
        <link xconnector="conBase#onSelectionStopSet">
        	<bind role="onSelection" component="navegacao2">
	        	<bindParam name="value" value="EXIT"/>
	        </bind>
	        
	        <bind role="stop" component="dicionario"/>
	        <bind role="stop" component="jogos"/>
	        <bind role="stop" component="fundoGame"/>
	        <bind role="stop" component="personagens"/>
	        <bind role="stop" component="informacoes"/>
	        
	        <bind role="stop" component="menu1newTab"/>
	        <bind role="stop" component="menu2newTab"/>
	        <bind role="stop" component="menu3newTab"/>
	        <bind role="stop" component="menu4newTab"/>
	        <bind role="stop" component="navegacao2"/>
	        
	        <bind role="set" component="mediaVideo" interface="bounds">
                <bindParam name="var" value="37%, 4%, 60%, 60%"/>
            </bind>
        </link>
        
       <link xconnector="conBase#onEndStart">
        	<bind role="onEnd" component="navegacao2"/>
        	<bind role="start" component="menu1"/>
            <bind role="start" component="menu2"/>
            <bind role="start" component="menu3"/>
            <bind role="start" component="menu4"/>  
            <bind role="start" component="navegacao2"/>
            <bind role="start" component="logo"/>
        </link>
        <!-- 
        <link xconnector="conBase#onEndStop">
			<bind role="onEnd" component="dicionario"/>
			<bind role="onEnd" component="jogos"/>
			<bind role="onEnd" component="personagens"/>
			<bind role="onEnd" component="informacoes"/>
			<bind role="stop" component="fundoGame"/>
		</link>--> 
		
		<!--troca para fundo2 ao selecionar um dos menus-->
		<link xconnector="conBase#onSelectionStartStopSet">
			<bind role="onSelection" component="menu1"/>
			<bind role="onSelection" component="menu2"/>
			<bind role="onSelection" component="menu3"/>
			<bind role="onSelection" component="menu4"/>
			
			<bind role="stop" component="fundo"/>
			<bind role="start" component="fundo2"/>
			
			<bind role="set" component="mediaVideo" interface="bounds">
                <bindParam name="var" value="61.5%, 53.55%, 29.9%, 30%"/>
            </bind>
			
		</link>
		
		<!--troca para fundo ao finalizar aplicação-->
		<link xconnector="conBase#onEndStartStop">
			<bind role="onEnd" component="dicionario"/>
			<bind role="onEnd" component="jogos"/>
			<bind role="onEnd" component="personagens"/>
			<bind role="onEnd" component="informacoes"/>
			<bind role="stop" component="fundo2"/>
			<bind role="start" component="fundo"/>
		</link>
        
        <!--CONTROLE LUA DICIONARIO-->
        <link xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="dicionario"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="dicionario"/>
			</bind>
		</link>
		
		<!--CONTROLE LUA JOGOS-->
		<link xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="jogos" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="jogos"/>
			</bind>
		</link>
        
        <!--CONTROLE LUA PERSONAGENS-->
        <link xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="personagens"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="personagens"/>
			</bind>
		</link>
		
		<!--CONTROLE LUA INFORMAÇÕES-->
		<link xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="informacoes" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="informacoes"/>
			</bind>
		</link>
		
		<!--VOLTA DO FOCO PARA BOTOES AO ENCERRAR APLICAÇÕES LUA-->
		
		<link xconnector="conBase#onEndSet">
			<bind role="onEnd" component="dicionario" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
			<bind role="set" component="settings" interface="service.currentFocus">
				<bindParam name="value" value="2"/>
			</bind>
		</link>
		
		<link xconnector="conBase#onEndSet">
			<bind role="onEnd" component="jogos" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
			<bind role="set" component="settings" interface="service.currentFocus">
				<bindParam name="value" value="3"/>
			</bind>
		</link>
		
		<link xconnector="conBase#onEndSet">
			<bind role="onEnd" component="personagens" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
			<bind role="set" component="settings" interface="service.currentFocus">
				<bindParam name="value" value="4"/>
			</bind>
		</link>
		
		<link xconnector="conBase#onEndSet">
			<bind role="onEnd" component="informacoes" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
			<bind role="set" component="settings" interface="service.currentFocus" >
				<bindParam name="value" value="5"/>
			</bind>
		</link>
		
		<!--mantem o foco no vermelho ao iniciar-->
		
		<link xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="menu1"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
			<bind role="set" component="settings" interface="service.currentFocus">
				<bindParam name="value" value="2"/>
			</bind>
		</link>
        
        <link id="link_btnExitSelectResizeVideo" xconnector="conBase#onKeySelectionSetStopStart">
            <bind role="onSelection" component="navegacao2">
                <bindParam name="keyCode" value="EXIT"/>
            </bind>
            <bind role="start" component="icone"/>
            <bind role="stop" component="fundo"/>
            <bind role="stop" component="logo"/>
            <bind role="stop" component="navegacao2"/>
            <bind role="stop" component="menu1"/>
            <bind role="stop" component="menu2"/>
            <bind role="stop" component="menu3"/>
            <bind role="stop" component="menu4"/>
            <bind role="stop" component="dicionario"/>
            <bind role="stop" component="jogos"/>
            <bind role="stop" component="personagens"/>
            <bind role="stop" component="informacoes"/>
            <bind role="set" component="mediaVideo" interface="bounds">
                <bindParam name="var" value="0%,0%,100%,100%"/>
            </bind>
        </link>
    </body>
    
</ncl>