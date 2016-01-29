<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="Dango_Balango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>

		<regionBase>

			<!-- Video Fundo -->
			<region id="rgVideoFullscreen" zIndex="2"/>

			<!-- Imagem de Fundo -->
			<region id="rgFundo" width="100%" height="100%" zIndex="1"/>
			<region id="rgIconMenu" left="89.5%" top="3.7%" width="8.45%" height="6.7%" zIndex="2"/>

			<!-- Menu -->
			<region left="7.50%" top="2%" id="rgLogoMenu" width="26%" height="31.20%" zIndex="3"/>
			<region left="7.50%" top="2%" id="rgMenu1" width="26%" height="18.52%" zIndex="2"/>
			<region left="7.50%" top="2%" id="rgMenu2" width="26%" height="11.67%" zIndex="2"/>
			<region left="7.50%" top="2%" id="rgMenu3" width="26%" height="14.72%" zIndex="2"/>
			<region left="7.50%" top="2%" id="rgMenu4" width="26%" height="17.20%" zIndex="2"/>

			<!-- Lua -->
			<region left="57.3%" top="51.5%" id="rgLuaSlideDic" width="35%" height="35%" zIndex="4"/>
			<region left="57.3%" top="52.5%" id="rgLuagameDangoBalango" width="35%" height="35%" zIndex="4"/>
			<region left="57.3%" top="52.5%" id="rgFundoGame" width="35%" height="35%" zIndex="3"/>
			<region left="57.3%" top="51.5%" id="rgLuaSlide" width="35%" height="35%" zIndex="4"/>

		</regionBase>

		<descriptorBase>

			<!-- Video Fundo -->
			<descriptor id="dVideoFullscreen" region="rgVideoFullscreen"/>

			<!-- Imagem de Fundo -->
			<descriptor id="deFundo" region="rgFundo"/>
			<descriptor id="deIconMenu" region="rgIconMenu"/>

			<!-- Menu -->
			<descriptor id="deLogoMenu" region="rgLogoMenu"/>

			<descriptor id="deMenu1" region="rgMenu1" focusBorderWidth="0" focusSrc="media/menu/1a.png" focusSelSrc="media/menu/1a.png"
			focusIndex="1" moveDown="2" moveUp="4"><descriptorParam name="transparency" value="0.1"/></descriptor>

			<descriptor id="deMenu2" region="rgMenu2" focusBorderWidth="0" focusSrc="media/menu/2a.png" focusSelSrc="media/menu/2a.png"
			focusIndex="2" moveDown="3" moveUp="1"><descriptorParam name="transparency" value="0.1"/></descriptor>

			<descriptor id="deMenu3" region="rgMenu3" focusBorderWidth="0" focusSrc="media/menu/3a.png" focusSelSrc="media/menu/3a.png"
			focusIndex="3" moveDown="4" moveUp="2"><descriptorParam name="transparency" value="0.1"/></descriptor>

			<descriptor id="deMenu4" region="rgMenu4" focusBorderWidth="0" focusSrc="media/menu/4a.png" focusSelSrc="media/menu/4a.png"
			focusIndex="4" moveDown="1" moveUp="3"><descriptorParam name="transparency" value="0.1"/></descriptor>

			<!-- Lua -->
			<descriptor id="dLuaSlideDic" region="rgLuaSlideDic" focusIndex="6"/>
			<descriptor id="dLuagameDangoBalango" region="rgLuagameDangoBalango" focusIndex="7"/>
			<descriptor id="dFundoGame" region="rgFundoGame"><descriptorParam name="transparency" value="0.1"/></descriptor>
			<descriptor id="dLuaSlide" region="rgLuaSlide" focusIndex="8"/>

		</descriptorBase>

		<connectorBase>

			<importBase documentURI="connector.ncl" alias="conBase"/>

		</connectorBase>

	</head>

	<body>

		<port id="pVideoAbertura" component="videoAbertura"/>

		<!-- Video Fundo -->
		<media id="videoAbertura" src="media/video.mp4" descriptor="dVideoFullscreen"><area id="icon" begin="2s"/><property name="bounds"/></media>

		<!-- Imagem de Fundo -->
		<media id="imgFundo" src="media/fundo.png" descriptor="deFundo"/>
		<media id="iconMenu" src="media/menu/icon.png" descriptor="deIconMenu"/>

		<!-- Menus -->
		<media id="logoMenu" src="media/menu/5.png" descriptor="deLogoMenu"/>
		<media id="menu1" src="media/menu/1.png" descriptor="deMenu1"><property name="top"/></media>
		<media id="menu2" src="media/menu/2.png" descriptor="deMenu2"><property name="top"/></media>
		<media id="menu3" src="media/menu/3.png" descriptor="deMenu3"><property name="top"/></media>
		<media id="menu4" src="media/menu/4.png" descriptor="deMenu4"><property name="top"/></media>

		<!-- Lua -->
		<media id="luaSlidePersonagens" type="application/x-ginga-NCLua" src="slidePersonagens.lua" descriptor="dLuaSlide"/>
		<media id="gameDangoBalango" src="LuaRocks/main.lua" descriptor="dLuagameDangoBalango"/>
		<media id="fundoGame" src="media/fundoPreto.jpg" descriptor="dFundoGame"/>
		<media id="luaSlideDicTupi" type="application/x-ginga-NCLua" src="slideDic.lua" descriptor="dLuaSlideDic"/>

		<media id="settings" type="application/x-ginga-settings">
			<property name="service.currentKeyMaster" value=""/>
		</media>

		<!-- Links principais-->
		<link id="lOnStartVideo"  xconnector="conBase#onBeginStart">
			<bind component="videoAbertura" role="onBegin" interface="icon"/>
			<bind component="iconMenu" role="start"/>

		</link>

		<link id="link_stopComponetsOnEndVideo" xconnector="conBase#onStop">
			<bind component="videoAbertura" role="onEnd"/>
			<bind role="stop" component="iconMenu"/>
			<bind role="stop" component="imgFundo"/>
			<bind role="stop" component="logoMenu"/>
			<bind role="stop" component="menu1"/>
			<bind role="stop" component="menu2"/>
			<bind role="stop" component="menu3"/>
			<bind role="stop" component="menu4"/>
			<bind role="stop" component="fundoGame"/>
			<bind role="stop" component="luaSlidePersonagens"/>
			<bind role="stop" component="luaSlideDicTupi"/>
			<bind role="stop" component="gameDangoBalango"/>
		</link>

		<link id="link_iconMenuSelect" xconnector="conBase#onSelectionIconMenuResizeVideo">
			<bind role="onSelection" component="iconMenu">
				<bindParam name="keyCode" value="RED"/>
			</bind>

			<bind role="set" component="videoAbertura" interface="bounds">
				<bindParam name="varSet" value="50.97%, 5.33%, 45.22%, 41.87%"/>
			</bind>
			<bind role="stop" component="iconMenu"/>
			<bind role="start" component="imgFundo"/>
			<bind role="start" component="logoMenu"/>
			<bind role="start" component="menu1"/>
			<bind role="start" component="menu2"/>
			<bind role="start" component="menu3"/>
			<bind role="start" component="menu4"/>
		</link>

		<!-- Links de Animação -->
		<link xconnector="conBase#onSelectionIconMenuSetAnim">
			<bind role="onSelection" component="iconMenu">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="set" component="menu1" interface="top">
				<bindParam name="vBy" value="0"/>
				<bindParam name="vDuration" value="0.5s"/>
				<bindParam name="newValue" value="33.1%"/>
			</bind>
		</link>

		<link xconnector="conBase#onSelectionIconMenuSetAnim">
			<bind role="onSelection" component="iconMenu">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="set" component="menu2" interface="top">
				<bindParam name="vBy" value="0"/>
				<bindParam name="vDuration" value="0.5s"/>
				<bindParam name="newValue" value="51%"/>
			</bind>
		</link>

		<link xconnector="conBase#onSelectionIconMenuSetAnim">
			<bind role="onSelection" component="iconMenu">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="set" component="menu3" interface="top">
				<bindParam name="vBy" value="0"/>
				<bindParam name="vDuration" value="0.5s"/>
				<bindParam name="newValue" value="62%"/>
			</bind>
		</link>

		<link xconnector="conBase#onSelectionIconMenuSetAnim">
			<bind role="onSelection" component="iconMenu">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="set" component="menu4" interface="top">
				<bindParam name="vBy" value="0"/>
				<bindParam name="vDuration" value="0.5s"/>
				<bindParam name="newValue" value="76%"/>
			</bind>
		</link>

		<!-- Links de Menu -->
		<link id="link_btn_OneSelection" xconnector="conBase#onKeySelectionStartNStopN">
			<bind role="onSelection" component="menu1"/>

				<bind role="stop" component="gameDangoBalango"/>
				<bind role="start" component="luaSlideDicTupi"/>
				<bind role="stop" component="luaSlidePersonagens"/>
				<bind role="stop" component="fundoGame"/>

		</link>

		<link id="link_btn_TwoSelection" xconnector="conBase#onKeySelectionStartNStopN">
			<bind role="onSelection" component="menu2"/>

				<bind role="stop" component="luaSlidePersonagens"/>
				<bind role="start" component="gameDangoBalango"/>
				<bind role="start" component="fundoGame"/>
				<bind role="stop" component="luaSlideDicTupi"/>

		</link>

		<link id="link_btn_TrheeSelection" xconnector="conBase#onKeySelectionStartNStopN">
			<bind role="onSelection" component="menu3"/>

				<bind role="start" component="luaSlidePersonagens"/>
				<bind role="stop" component="gameDangoBalango"/>
				<bind role="stop" component="fundoGame"/>
				<bind role="stop" component="luaSlideDicTupi"/>

		</link>

		<!-- Controle de Foco -->

		<link id="link_focoBeginGameDangoBalango" xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="gameDangoBalango"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="gameDangoBalango"/>
			</bind>
		</link>

		<link id="link_focoEndGameDangoBalango" xconnector="conBase#onEndSet">
			<bind role="onEnd" component="gameDangoBalango" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="1"/>
			</bind>
		</link>

		<link id="link_focoBeginSlidePer" xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="luaSlideDicTupi"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="luaSlideDicTupi"/>
			</bind>
		</link>

		<link id="link_focoEndSlidePer" xconnector="conBase#onEndSet">
			<bind role="onEnd" component="luaSlideDicTupi" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="2"/>
			</bind>
		</link>

		<link id="link_focoBeginSlideDic" xconnector="conBase#onBeginSet">
			<bind role="onBegin" component="luaSlidePersonagens"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="luaSlidePersonagens"/>
			</bind>
		</link>

		<link id="link_focoEndSlideDic" xconnector="conBase#onEndSet">
			<bind role="onEnd" component="luaSlidePersonagens" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="3"/>
			</bind>
		</link>

		<!-- Voltar ao menu -->
		<link id="link_onKeyGreenSelectStop" xconnector="conBase#onKeySelectionStop">
			<bind role="onSelection" component="imgFundo">
				<bindParam name="keyCode" value="GREEN"/>
			</bind>

				<bind role="stop" component="luaSlidePersonagens"/>
				<bind role="stop" component="gameDangoBalango"/>
				<bind role="stop" component="fundoGame"/>
				<bind role="stop" component="luaSlideDicTupi"/>

		</link>

		<link id="link_btn_FiveSelection" xconnector="conBase#onSelectionMenuFiveResizeBackVideo">
			<bind role="onSelection" component="imgFundo">
				<bindParam name="keyCode" value="EXIT"/>
			</bind>

				<bind role="start" component="iconMenu"/>
				<bind role="stop" component="imgFundo"/>
				<bind role="stop" component="logoMenu"/>
				<bind role="stop" component="menu1"/>
				<bind role="stop" component="menu2"/>
				<bind role="stop" component="menu3"/>
				<bind role="stop" component="menu4"/>
				<bind role="stop" component="fundoGame"/>
				<bind role="stop" component="luaSlidePersonagens"/>
				<bind role="stop" component="luaSlideDicTupi"/>
				<bind role="stop" component="gameDangoBalango"/>

			<bind role="set" component="videoAbertura" interface="bounds">
				<bindParam name="varSet" value="0%,0%,100%,100%"/>
			</bind>

		</link>

	</body>
</ncl>
