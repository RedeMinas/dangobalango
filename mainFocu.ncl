<?xml version="1.0" encoding="UTF-8"?>
<!-- Exemplo de uso de objeto NCLua -->


<ncl id="Dango_Balango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<ruleBase>
			<rule id="rDicionario" var="service.currentFocus" value="2" comparator="eq"/>
			<rule id="rJogos" var="service.currentFocus" value="3" comparator="eq"/>
			<rule id="rPersonagens" var="service.currentFocus" value="4" comparator="eq"/>
			<rule id="rInformacoes" var="service.currentFocus" value="5" comparator="eq"/>
		</ruleBase>

		<transitionBase>
			<transition id="trans1" type="fade" dur="1s"/>
			<transition id="trans2" type="irisWipe" dur="1s"/>
			<transition id="trans3" type="fade" dur="1s"/>
			<transition id="trans4" type="irisWipe" dur="1s"/>
			<transition id="efeitoInicio" type="fade" dur="0.8s"/>
            <transition id="efeitoFIm" type="barWipe" dur="0.8s"/>
		</transitionBase>
		<regionBase>
			<region id="fundoReg" width="100%" height="100%" zIndex="2">
				<region id="screenReg" width="100%" height="100%" zIndex="3"/>
				<region id="rgIconMenu" left="89.5%" top="3.7%"  width="8.45%" height="6.7%" zIndex="4"/>
				<region id="rgLogoMenu" left="7.50%" top="2%"  width="26%" height="31.20%" zIndex="3"/>
				<region id="frameReg" left="5%" top="6.7%" width="18.5%" height="18.5%" zIndex="3"/>
				<region id="formReg" left="57.25%" top="9.83%" width="37.75%" height="70.2%" zIndex="3"/>
				<region id="intReg" left="92.5%" top="91.7%" width="5.07%" height="6.51%" zIndex="3"/>
				<region id="rgMenu1" left="7.50%" top="33.1%" width="26%" height="18.52%" zIndex="3"/>
				<region id="rgMenu2" left="7.50%" top="51%" width="26%" height="11.67%" zIndex="3"/>
				<region id="rgMenu3" left="7.50%" top="62%" width="26%" height="14.72%" zIndex="3"/>
				<region id="rgMenu4" left="7.50%" top="76%" width="26%" height="17.20%" zIndex="3"/>
				
				<region id="rgBtnSair" left="2%"   top="92%"  width="5%" height="3%" zIndex="4"/>
				<region id="rgLuaSlideDic" left="57.3%" top="44%"  width="35%" height="53%" zIndex="5"/>
				<region id="rgLuaSlideInfo" left="57.3%" top="44%"  width="35%" height="53%" zIndex="5"/>
            	<region id="rgLuaGameDango" left="57.3%" top="45%"  width="35%" height="45%" zIndex="5"/>
 				<region id="rgLuaSlidePerso" left="57.3%" top="44%"  width="35%" height="48%" zIndex="5"/>
		
				 <region id="rgFundoGame2" left="57.9%" top="45%"  width="31%" height="45%" zIndex="4"/>
				 <region id="rgFundoGame" left="57.3%" top="45%"  width="35%" height="45%" zIndex="4"/>
 			</region>
		</regionBase>
		<descriptorBase>
			<descriptor id="fundoDesc" region="fundoReg"/>
			<descriptor id="screenDesc" region="screenReg"/>
			<descriptor id="deLogo" region="rgLogoMenu"/>
			<descriptor id="dFundoGame2" region="rgFundoGame2"/>

			<descriptor id="deIconMenu" region="rgIconMenu"/>

			<descriptor id="deSair" region="rgBtnSair"/>
			<descriptor id="formDesc" region="formReg" focusIndex="1" explicitDur="15s"/>
			<descriptor id="deMenu1" region="rgMenu1" focusIndex="2" moveDown="3" moveUp="5" moveRight="6" focusBorderWidth="0" focusSelSrc="media/menu/1a.png" focusSrc="media/menu/1a.png"/>
			<descriptor id="deMenu2" region="rgMenu2" focusIndex="3" moveDown="4" moveUp="2" moveRight="7" focusBorderWidth="0" focusSelSrc="media/menu/2a.png" focusSrc="media/menu/2a.png"/>
			<descriptor id="deMenu3" region="rgMenu3" focusIndex="4" moveDown="5" moveUp="3" moveRight="8" focusBorderWidth="0" focusSelSrc="media/menu/3a.png" focusSrc="media/menu/3a.png"/>
			<descriptor id="deMenu4" region="rgMenu4" focusIndex="5" moveDown="2" moveUp="4" moveRight="9" focusBorderWidth="0" focusSelSrc="media/menu/4a.png" focusSrc="media/menu/4a.png"/>
		
			<descriptor id="dLuaSlideDic" region="rgLuaSlideDic"  focusIndex="6" moveLeft="2" transIn="trans1" transOut="trans2"/>
			<descriptor id="dLuaGameDango" region="rgLuaGameDango"   focusIndex="7" moveLeft="3" transIn="trans1" transOut="trans2"/>
			<descriptor id="dLuaSlidePerso" region="rgLuaSlidePerso"  focusIndex="8" moveLeft="4" transIn="trans3" transOut="trans4"/>
			<descriptor id="dLuaSlideInfo" region="rgLuaSlideInfo"  focusIndex="9" moveLeft="5" transIn="trans3" transOut="trans4"/>
			<descriptor id="dFundoGame" region="rgFundoGame" transIn="efeitoInicio" transOut="efeitoFim"><descriptorParam name="transparency" value="0.1"/></descriptor>
		</descriptorBase>
		<connectorBase>
			<importBase documentURI="connector.ncl" alias="conBase"/>
		</connectorBase>
	</head>

	<body>
		<port id="entry" component="video"/>
		<media id="fundo" src="media/fundo.png" descriptor="fundoDesc"/>
		<media id="video" src="media/video.mp4" descriptor="screenDesc"><area id="icon" begin="5s"/><property name="bounds"/></media>
		<media id="icone" src="media/menu/icon.png" descriptor="deIconMenu"/>
		<media id="logo" src="media/menu/5.png" descriptor="deLogo"/>
		<media id="sair" src="media/sair.png" descriptor="deSair"/>
	
		<media id="fundoGame" src="media/fundoPreto.jpg" descriptor="dFundoGame"/>
		<media id="fundoGame2" src="media/fundoPreto.jpg" descriptor="dFundoGame2"/>
		<media id="newMenu" refer="menu" instance="newInstance"/>
	


		<context id="menu">
		
			<port id="pMenu1" component="menu1"/>
			<port id="pMenu2" component="menu2"/>
			<port id="pMenu3" component="menu3"/>
			<port id="pMenu4" component="menu4"/>
			<port id="pSettings" component="settings"/>
		
			<media id="menu1" src="media/menu/1.png" descriptor="deMenu1"/>
			<media id="menu2" src="media/menu/2.png" descriptor="deMenu2"/>
			<media id="menu3" src="media/menu/3.png" descriptor="deMenu3"/>
			<media id="menu4" src="media/menu/4.png" descriptor="deMenu4"/>
		

			<media id="settings" type="application/x-ginga-settings">
            <property name="service.currentKeyMaster" value=""/>
		</media>

	

			<media id="variavel"  descriptor="dLuaSlideDic">
				<property name="opc" value="1"/>
			</media>
			<media id="variavel2"  descriptor="dLuaSlidePerso">
				<property name="opc" value="0"/>
			</media>
			<media id="variavel3"  descriptor="dLuaSlideInfo">
				<property name="opc" value="0"/>
			</media>
			
			<switch id="opcoes">
				<bindRule constituent="dicionario" rule="rDicionario"/>
				<bindRule constituent="jogos" rule="rJogos"/>
				<bindRule constituent="personagens" rule="rPersonagens"/>
				<bindRule constituent="informacoes" rule="rInformacoes"/>
				<media id="dicionario"  src="slideDic.lua" descriptor="dLuaSlideDic"/>
				<media id="jogos"  src="media/gamedango/game.lua" descriptor="dLuaGameDango"/>
				<media id="personagens" src="slidePersonagens.lua" descriptor="dLuaSlidePerso" />
				<media id="informacoes" src="slideInfo.lua" descriptor="dLuaSlideInfo"/>
			<media id="newSettings" refer="settings" instance="newInstance"/>
			</switch>
			
			<link id="switch_opcoes" xconnector="conBase#onSelection_orSet_varStopStart">
			  	<bind role="onSelection" component="menu1"/>
				<bind role="onSelection" component="menu2"/>
				<bind role="onSelection" component="menu3"/>
				<bind role="onSelection" component="menu4"/>
				<bind role="set" component="variavel" interface="opc">
					<bindParam name="var" value="0"/>
				</bind>

				<bind role="stop" component="opcoes"/>
				<bind role="start" component="opcoes"/>
				</link>


		 <link id="link_focoBeginDicionario" xconnector="conBase#onSelectionSet">
            <bind role="onSelection" component="menu1"/>
            <bind role="set" component="settings" interface="service.currentKeyMaster">
                <bindParam name="value" value="dicionario"/>
            </bind>
        </link>


 		<link id="link_focoBeginGameDangoBalango" xconnector="conBase#onSelectionSet">
            <bind role="onSelection" component="menu2" />
            <bind role="set" component="settings" interface="service.currentKeyMaster">
                <bindParam name="value" value="jogos"/>
            </bind>
        </link>
        

   

        <link id="link_focoBeginPersonagens" xconnector="conBase#onSelectionSet">
            <bind role="onSelection" component="menu3" />
            <bind role="set" component="settings" interface="service.currentKeyMaster">
                <bindParam name="value" value="personagens"/>
            </bind>
        </link>
        


         <link id="link_focoBeginInformacoes" xconnector="conBase#onSelectionSet">
            <bind role="onSelection" component="menu4" />
            <bind role="set" component="settings" interface="service.currentKeyMaster">
                <bindParam name="value" value="informacoes"/>
            </bind>
        </link>
        

        
        
		</context>





		<link  id="Video" xconnector="conBase#onBeginStart_delay">
			<bind role="onBegin" component="video"/>
			<bind role="start" component="icone">			
				<bindParam name="delay" value="0.5s"/>
			</bind>				
		</link>

		<link  id="MenuInterativo" xconnector="conBase#onKeySelectionSetStopStart">
			<bind role="onSelection" component="icone">
			<bindParam name="keyCode" value="ENTER"/>
			</bind>		
			<bind role="start" component="menu"/>
			<bind role="start" component="fundo"/>	
			<bind role="start" component="sair"/>
			<bind role="start" component="back"/>
			<bind role="start" component="logo"/>			
			<bind role="stop" component="icone"/>
			 <bind role="set" component="video" interface="bounds">
                <bindParam name="var" value="50.97%, 2.33%, 45.22%, 41.87%"/>
            </bind>			
		</link>



		<link  id="SelecaoFundoImg1" xconnector="conBase#onSelectionStartStop">
			<bind role="onSelection" component="menu" interface="pMenu1"/>
			<bind role="start" component="fundoGame2"/>	
			<bind role="stop" component="fundoGame"/>		
		</link>

		<link  id="SelecaoFundoImg2" xconnector="conBase#onSelectionStartStop">
			<bind role="onSelection" component="menu" interface="pMenu2"/>
			<bind role="stop" component="fundoGame2"/>	
			<bind role="start" component="fundoGame"/>	
		
		</link>

		<link  id="SelecaoFundoImg3" xconnector="conBase#onSelectionStop">
			<bind role="onSelection" component="menu" interface="pMenu3"/>
			<bind role="stop" component="fundoGame2"/>	
			<bind role="stop" component="fundoGame"/>		
		</link>

		<link  id="SelecaoFundoImg4" xconnector="conBase#onSelectionStop">
			<bind role="onSelection" component="menu" interface="pMenu4"/>
			<bind role="stop" component="fundoGame2"/>	
			<bind role="stop" component="fundoGame"/>		
		</link>

		<link id="link_btnExitSelectResizeVideo" xconnector="conBase#onKeySelectionSetStopStart">
            <bind role="onSelection" component="sair">
                <bindParam name="keyCode" value="EXIT"/>
            </bind>

                <bind role="start" component="icone"/>
                <bind role="stop" component="fundo"/>
                <bind role="stop" component="logo"/>
                <bind role="stop" component="menu"/>
                <bind role="stop" component="sair"/>
                <bind role="stop" component="fundoGame"/>
                <bind role="stop" component="fundoGame2"/>
            <bind role="set" component="video" interface="bounds">
                <bindParam name="var" value="0%,0%,100%,100%"/>
            </bind>

        </link>
	</body>
</ncl>