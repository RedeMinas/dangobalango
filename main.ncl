<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="DangoBalango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
      <regionBase>
        	<region id="rgBackGroundImage"                                 width="100%"   height="100%"    zIndex="1"/>
        	<region id="rgBackGroundImage2"                                width="100%"   height="100%"    zIndex="6"/>
            <region id="rgFullScreenMedia"                                 width="100%"   height="100%"    zIndex="7"/>
            <region id="rgIconInteract"         left="95%"    top="8%"     width="2.55%"  height="4.44%"   zIndex="8"/>
            <region id="rgFrameRed"             left="8%"     top="32%"    width="15.52%" height="15.55%"  zIndex="5"/>
            <region id="rgFrameGreen"           left="8%"     top="48%"    width="14.53%" height="10.74%"  zIndex="5"/>
            <region id="rgFrameYellow"          left="8%"     top="60%"    width="13.38%" height="13.61%"  zIndex="5"/>
            <region id="rgFrameBlue"            left="8%"     top="75%"    width="11.82%" height="8.61%"   zIndex="5"/>
            <region id="rgFrameRedBtnSelect"    left="22%"     top="75%"    width="15.52%" height="15.55%"  zIndex="7"/>
            <region id="rgFrameGreenBtnSelect"  left="22%"     top="75%"    width="14.53%" height="10.74%"  zIndex="7"/>
            <region id="rgFrameYellowBtnSelect" left="22%"     top="75%"    width="13.38%" height="13.61%"  zIndex="7"/>
            <region id="rgFrameBlueBtnSelect"   left="22%"     top="75%"    width="11.82%" height="8.61%"  zIndex="7"/>
            <region id="rgLogo"         		left="3%" 	  top="1%"     width="22.08%" height="84.16%"  zIndex="3"/>
            <region id="rgFrameRedOff"          left="8%"     top="32%"    width="15.52%" height="15.55%"  zIndex="4"/>
            <region id="rgFrameGreenOff"        left="8%"     top="48%"    width="14.53%" height="10.74%"  zIndex="4"/>
            <region id="rgFrameYellowOff"       left="8%"     top="60%"    width="13.38%" height="13.61%"  zIndex="4"/>
            <region id="rgFrameBlueOff"         left="8%"     top="75%"    width="11.82%" height="8.61%"   zIndex="4"/>
            <region id="rgLua"                  left="4.99%"  top="13.6%" width="48%"    height="59%" zIndex="8"/>
            <region id="rgFundoPreto"           left="4.99%"  top="13.6%" width="48%"    height="54.5%" zIndex="7"/>
        </regionBase>
        
        <descriptorBase>
            <descriptor id="deBackGroundImage"      region="rgBackGroundImage"/>
            <descriptor id="deBackGroundImage2"     region="rgBackGroundImage2"/>
            <descriptor id="deFullScreenMedia"      region="rgFullScreenMedia"/>
            <descriptor id="deIconInteract"         region="rgIconInteract"/>
     		<descriptor id="deMenuRed"              region="rgFrameRed"/>
            <descriptor id="deFrameRedBtnSelect"    region="rgFrameRedBtnSelect"/>
            <descriptor id="deFrameGreenBtnSelect"  region="rgFrameGreenBtnSelect"/>
            <descriptor id="deFrameYellowBtnSelect" region="rgFrameYellowBtnSelect"/>
            <descriptor id="deFrameBlueBtnSelect"   region="rgFrameBlueBtnSelect"/>
            <descriptor id="deMenuGreen"            region="rgFrameGreen"/>
            <descriptor id="deMenuYellow"           region="rgFrameYellow"/>
            <descriptor id="deMenuBlue"             region="rgFrameBlue"/>
            <descriptor id="deMenuRedOff"           region="rgFrameRedOff"/>
            <descriptor id="deMenuGreenOff"         region="rgFrameGreenOff"/>
            <descriptor id="deMenuYellowOff"        region="rgFrameYellowOff"/>
            <descriptor id="deMenuBlueOff"          region="rgFrameBlueOff"/>
            <descriptor id="deLogo"         		region="rgLogo"/>      
            <descriptor id="deFundoPretoOpaco"      region="rgFundoPreto"/>
	        <descriptor id="dLua"   				region="rgLua" focusIndex="0" focusBorderWidth="0"/>
       		
        </descriptorBase>
        <!-- library of used connectors -->
        <connectorBase>
            <importBase documentURI="connector.ncl" alias="conBase"/>
        </connectorBase>
    </head>
    
    <body>
        <port id="pInicia" component="mediaVideo"/>
        <!-- Extra -->
        <media id="backGroundImage"     src="media/menu/tela1/fundo.png"    descriptor="deBackGroundImage"/>
        <media id="backGroundImage2"    src="media/menu/tela2/fundo2.png"   descriptor="deBackGroundImage2"/>
        <media id="fundoPreto"          src="media/fundoPreto.png"          descriptor="deFundoPretoOpaco"/>
        <media id="iconInteract"        src="media/menu/icon.png"         	descriptor="deIconInteract"/>
        <media id="mediaVideo" src="sbtvd-ts://video" descriptor="deFullScreenMedia">
            <area id="icon" begin="2s"/>
            <property name="bounds"/>
            <property name="zIndex" value="7"/>
        </media>
        <media id="settings" type="application/x-ginga-settings" >
            <property name="service.currentKeyMaster" value=""/>
        </media>
        <media id="logo"   		    src="media/menu/tela1/0.png"  descriptor="deLogo"/>
        <!-- Frame Red -->
        <media id="menuRedOff"      src="media/menu/tela1/1.png"  descriptor="deMenuRedOff"/>
        <media id="menuRedOn"       src="media/menu/tela1/1a.png" descriptor="deMenuRed"/>
        <media id="btnRedSelec"     src="media/menu/tela1/1a.png" descriptor="deFrameRedBtnSelect"/>
        <media id="dicionarioTupi"  src="slideDic.lua" 			  descriptor="dLua"/>
        <!-- Frame Green -->
        <media id="menuGreenOff"    src="media/menu/tela1/2.png"  descriptor="deMenuGreenOff"/>
        <media id="menuGreenOn"     src="media/menu/tela1/2a.png" descriptor="deMenuGreen"/>
		<media id="btnGreenSelec"   src="media/menu/tela1/2a.png" descriptor="deFrameGreenBtnSelect"/>
		<media id="gameDango"  		src="media/gamedango/game.lua" descriptor="dLua"/>
        <!-- Frame Yellow -->
        <media id="menuYellowOff"   src="media/menu/tela1/3.png"  descriptor="deMenuYellowOff"/>
        <media id="menuYellowOn"    src="media/menu/tela1/3a.png" descriptor="deMenuYellow"/>
        <media id="btnYellowSelec"  src="media/menu/tela1/3a.png" descriptor="deFrameYellowBtnSelect"/>
        <media id="personagens"  src="slidePersonagens.lua"       descriptor="dLua"/>
       
        <!-- Frame Blue -->
        <media id="menuBlueOff"  src="media/menu/tela1/4.png"     descriptor="deMenuBlueOff"/>
        <media id="menuBlueOn"   src="media/menu/tela1/4a.png"    descriptor="deMenuBlue"/>
        <media id="btnBlueSelec" src="media/menu/tela1/4a.png"    descriptor="deFrameBlueBtnSelect"/>
        <media id="informacoes"    src="slideInfo.lua"           descriptor="dLua"/>
        
         <!-- Link Icon Interact -->
        <link id="link_onBeginVideo"  xconnector="conBase#onBeginStart">
            <bind role="onBegin" component="mediaVideo"  interface="icon"/>
            <bind role="start"   component="iconInteract" />
        </link>
        <!-- Link Start Interface -->
        <link id="link_iconMenuSelect" xconnector="conBase#onSelectionIconMenuResizeVideo">
            <bind role="onSelection" component="iconInteract">
                <bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="set" component="mediaVideo" interface="bounds">
                <bindParam name="varSet" value="37.10%, 20.65%, 54%, 54%"/>
            </bind>
            <bind role="start" component="backGroundImage"/>
            <bind role="stop"  component="iconInteract"/>
        </link>
        <link id="link_onBeginStart" xconnector="conBase#onBeginStart">
            <bind role="onBegin" component="backGroundImage"/>
            <bind role="start"   component="logo"/>
            <bind role="start"   component="menuRedOff"/>
            <bind role="start"   component="menuGreenOff"/>
            <bind role="start"   component="menuYellowOff"/>
            <bind role="start"   component="menuBlueOff"/>
        </link>
        <link id="link_onEndIconStart" xconnector="conBase#onEndStart">
            <bind role="onEnd" component="iconInteract"/>
            <bind role="start" component="menuRedOn"/>
        </link>
        <!-- Igual para todos -->
       <link id="link_frameSelection" xconnector="conBase#onSelectionStartStopSet">
            <bind role="onSelection" component="menuRedOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="menuGreenOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="menuYellowOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="menuBlueOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="RED"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="GREEN"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="YELLOW"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="BLUE"/>
            </bind>
            <bind role="start" component="backGroundImage2"/>
            <bind role="start" component="fundoPreto"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="set" component="mediaVideo" interface="bounds">
            	<bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
            </bind> 
        </link>
        <!-- especifico RED -->
        <link id="link_frameRedSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuRedOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="RED"/>
            </bind>
            <bind role="start" component="btnRedSelec"/>
            <bind role="stop" component="menuRedOn"/>
        </link>
        <link xconnector="conBase#onBeginStart">
        	<bind role="onBegin" component="btnRedSelec"/>
        	<bind role="start" component="dicionarioTupi"/>
        </link>
        <link xconnector="conBase#onEndStart">
        	<bind role="onEnd" component="btnRedSelec"/>
        	<bind role="start" component="menuRedOn"/>
        </link>
        <!-- especifico GREEN -->
        <link id="link_frameGreenSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuGreenOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="GREEN"/>
            </bind>
            <bind role="start" component="btnGreenSelec"/>
            <bind role="stop" component="menuGreenOn"/>
        </link>
        <link xconnector="conBase#onBeginStart">
        	<bind role="onBegin" component="btnGreenSelec"/>
        	<bind role="start" component="gameDango"/>
        </link>
        <link xconnector="conBase#onEndStart">
        	<bind role="onEnd" component="btnGreenSelec"/>
        	<bind role="start" component="menuGreenOn"/>
        </link>
        <!-- especifico YELLOW -->
        <link id="link_frameYellowSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuYellowOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="YELLOW"/>
            </bind>
            <bind role="start" component="btnYellowSelec"/>
            <bind role="stop" component="menuYellowOn"/>
        </link>
        <link xconnector="conBase#onBeginStart">
        	<bind role="onBegin" component="btnYellowSelec"/>
        	<bind role="start" component="personagens"/>
        </link>
        <link xconnector="conBase#onEndStart">
        	<bind role="onEnd" component="btnYellowSelec"/>
        	<bind role="start" component="menuYellowOn"/>
        </link>
        <!-- especifico BLUE -->
        <link id="link_frameBlueSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuBlueOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="onSelection" component="backGroundImage">
            	<bindParam name="keyCode" value="BLUE"/>
            </bind>
            <bind role="start" component="btnBlueSelec"/>            
            <bind role="stop" component="menuBlueOn"/>
        </link>
        <link xconnector="conBase#onBeginStart">
        	<bind role="onBegin" component="btnBlueSelec"/>
        	<bind role="start" component="informacoes"/>
        </link>
        <link xconnector="conBase#onEndStart">
        	<bind role="onEnd" component="btnBlueSelec"/>
        	<bind role="start" component="menuBlueOn"/>
        </link>
		
        <!--ASCENDE TAG PELAS SETAS DIRECIONAIS (UP/DOWN)-->
        <!-- RED -->
        <link id="link_frameRedUp" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuRedOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuBlueOn"/>
        </link>
        <link id="link_frameRedDown" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuRedOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuGreenOn"/>
        </link>
        <!-- GREEN -->
       <link id="link_frameGreenUp" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuGreenOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuRedOn"/>
        </link>
        <link id="link_frameGreenDown" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuGreenOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuYellowOn"/>
        </link>
        <!-- YELLOW -->
        <link id="link_frameYellowUp" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuYellowOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuGreenOn"/>
        </link>
        <link id="link_frameYellowDown" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuYellowOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuBlueOn"/>
        </link>
        <!-- BLUE -->
        <link id="link_frameBlueUp" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuBlueOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuYellowOn"/>
        </link>
        <link id="link_frameBlueDown" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuBlueOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuRedOn"/>
        </link>
        <!--AO ASCENDER ALGUM "BOTAO ON", APAGA TODOS OS OUTROS-->
		<link xconnector="conBase#onBeginStop">
			<bind role="onBegin" component="menuRedOn"/>
			<bind role="stop" component="menuGreenOn"/>
			<bind role="stop" component="menuYellowOn"/>
			<bind role="stop" component="menuBlueOn"/>
		</link>
		<link xconnector="conBase#onBeginStop">
			<bind role="onBegin" component="menuGreenOn"/>
			<bind role="stop" component="menuRedOn"/>
			<bind role="stop" component="menuYellowOn"/>
			<bind role="stop" component="menuBlueOn"/>
		</link>
		<link xconnector="conBase#onBeginStop">
			<bind role="onBegin" component="menuYellowOn"/>
			<bind role="stop" component="menuRedOn"/>
			<bind role="stop" component="menuGreenOn"/>
			<bind role="stop" component="menuBlueOn"/>
		</link>
		<link xconnector="conBase#onBeginStop">
			<bind role="onBegin" component="menuBlueOn"/>
			<bind role="stop" component="menuRedOn"/>
			<bind role="stop" component="menuGreenOn"/>
			<bind role="stop" component="menuYellowOn"/>
		</link>
		<!--SAI DA TELA 1-->
        <link id="sairTela1" xconnector="conBase#onSelectionStartStopSet">
            <bind role="onSelection" component="backGroundImage">
                <bindParam name="keyCode" value="EXIT"/>
            </bind>
            <bind role="stop" component="logo"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="stop" component="menuRedOff"/>
            <bind role="stop" component="menuGreenOff"/>
            <bind role="stop" component="menuYellowOff"/>
            <bind role="stop" component="menuBlueOff"/>
            <bind role="stop" component="backGroundImage"/>
			<bind role="set"  component="mediaVideo" interface="bounds">
                <bindParam name="valueSet" value="0%,0%,100%,100%"/>
            </bind>
            <bind role="start" component="iconInteract"/>
        </link>
        <!--SAI DA TELA 2-->
        <link id="sairTela2" xconnector="conBase#onSelectionStartStopSet">
            <bind role="onSelection" component="backGroundImage2">
                <bindParam name="keyCode" value="EXIT"/>
            </bind>
            <bind role="stop"  component="btnRedSelec"/>
            <bind role="stop"  component="btnGreenSelec"/>
            <bind role="stop"  component="btnYellowSelec"/>
            <bind role="stop"  component="btnBlueSelec"/>
            <bind role="stop"  component="fundoPreto"/>
            <bind role="stop"  component="dicionarioTupi"/>
            <bind role="stop"  component="gameDango"/>
            <bind role="stop"  component="informacoes"/>
            <bind role="stop"  component="personagens"/>
            <bind role="stop"  component="backGroundImage2"/>
            <bind role="start" component="backGroundImage"/>
            <bind role="set"   component="mediaVideo" interface="bounds">
                <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
            </bind>
        </link>
        <link id="link_focoBeginDicionario" xconnector="conBase#onBeginSet">
                <bind role="onBegin" component="btnRedSelec" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value="dicionarioTupi"/>
                </bind>
            </link>
            <link id="link_focoEndDicionario" xconnector="conBase#onEndSet">
                <bind role="onEnd" component="dicionarioTupi" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value=""/>
                </bind>
            </link>
            <link id="link_focoBeginGameDango" xconnector="conBase#onBeginSet">
                <bind role="onBegin" component="btnGreenSelec" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value="gameDango"/>
                </bind>
            </link>
            <link id="link_focoEndGameDango" xconnector="conBase#onEndSet">
                <bind role="onEnd" component="gameDango" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value=""/>
                </bind>
            </link>
            <link id="link_focoBeginPersonagens" xconnector="conBase#onBeginSet">
                <bind role="onBegin" component="btnYellowSelec" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value="personagens"/>
                </bind>
            </link>
            <link id="link_focoEndPersonagens" xconnector="conBase#onEndSet">
                <bind role="onEnd" component="personagens" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value=""/>
                </bind>
            </link>
            <link id="link_focoBeginInformacoes" xconnector="conBase#onBeginSet">
                <bind role="onBegin" component="btnBlueSelec" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value="informacoes"/>
                </bind>
            </link>

            <link id="link_focoEndInformacoes" xconnector="conBase#onEndSet">
                <bind role="onEnd" component="informacoes" />
                <bind role="set" component="settings" interface="service.currentKeyMaster">
                    <bindParam name="value" value=""/>
                </bind>
            </link>
    </body>
</ncl>
