<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="DangoBalango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <regionBase>
      <region id="rgBgd"                                 width="100%"   height="100%"    zIndex="1"/>
      <region id="rgBgd2"                                width="100%"   height="100%"    zIndex="6"/>
      <region id="rgVideo"                                 width="100%"   height="100%"    zIndex="7"/>
      <region id="rgIcon"         left="89%"    top="90%"     width="10.677%"  height="9.259%"   zIndex="8"/>
      <region id="rgFrameRed"             left="8%"     top="32%"    width="15.52%" height="15.55%"  zIndex="5"/>
      <region id="rgFrameGreen"           left="8%"     top="48%"    width="14.53%" height="10.74%"  zIndex="5"/>
      <region id="rgFrameYellow"          left="8%"     top="60%"    width="13.38%" height="13.61%"  zIndex="5"/>
      <region id="rgFrameBlue"            left="8%"     top="75%"    width="11.82%" height="8.61%"   zIndex="5"/>
      <region id="rgFrameRedBtnSelect"    left="22%"    top="73%"    width="15.52%" height="15.55%"  zIndex="7"/>
      <region id="rgFrameGreenBtnSelect"  left="22%"    top="75%"    width="14.53%" height="10.74%"  zIndex="7"/>
      <region id="rgFrameYellowBtnSelect" left="22%"    top="75%"    width="13.38%" height="13.61%"  zIndex="7"/>
      <region id="rgFrameBlueBtnSelect"   left="23.5%"  top="77%"    width="11.82%" height="8.61%"  zIndex="7"/>
      <region id="rgLogo"         		    left="3%" 	  top="1%"     width="22.08%" height="84.16%"  zIndex="3"/>
      <region id="rgFrameRedOff"          left="8%"     top="32%"    width="15.52%" height="15.55%"  zIndex="4"/>
      <region id="rgFrameGreenOff"        left="8%"     top="48%"    width="14.53%" height="10.74%"  zIndex="4"/>
      <region id="rgFrameYellowOff"       left="8%"     top="60%"    width="13.38%" height="13.61%"  zIndex="4"/>
      <region id="rgFrameBlueOff"         left="8%"     top="75%"    width="11.82%" height="8.61%"   zIndex="4"/>
      <region id="rgSlide"                left="4.99%"  top="13.6%" width="48%"    height="54.5%" zIndex="8"/>
      <region id="rgGame"                left="4.99%"  top="13.6%" width="48%"    height="54.5%" zIndex="8"/>
      <region id="rgBgdBlack"           left="4.99%"  top="13.6%" width="48%"    height="54.5%" zIndex="7"/>
    </regionBase>
    
    <descriptorBase>
      <descriptor id="dBgd"                  region="rgBgd"/>
      <descriptor id="dBgd2"                 region="rgBgd2"/>
      <descriptor id="dVideo"                region="rgVideo"/>
      <descriptor id="dIcon"                 region="rgIcon"/>

      <descriptor id="dFrameRedBtnSelect"    region="rgFrameRedBtnSelect"/>
      <descriptor id="dFrameGreenBtnSelect"  region="rgFrameGreenBtnSelect"/>
      <descriptor id="dFrameYellowBtnSelect" region="rgFrameYellowBtnSelect"/>
      <descriptor id="dFrameBlueBtnSelect"   region="rgFrameBlueBtnSelect"/>
     	<descriptor id="dMenuRed"              region="rgFrameRed"/>
      <descriptor id="dMenuGreen"            region="rgFrameGreen"/>
      <descriptor id="dMenuYellow"           region="rgFrameYellow"/>
      <descriptor id="dMenuBlue"             region="rgFrameBlue"/>
      <descriptor id="dMenuRedOff"           region="rgFrameRedOff"/>
      <descriptor id="dMenuGreenOff"         region="rgFrameGreenOff"/>
      <descriptor id="dMenuYellowOff"        region="rgFrameYellowOff"/>
      <descriptor id="dMenuBlueOff"          region="rgFrameBlueOff"/>
      <descriptor id="dLogo"         		    region="rgLogo"/>      
      <descriptor id="dBgdBlack"           region="rgBgdBlack"/>
	    <descriptor id="dGame"   				        region="rgGame" focusIndex="luaIdx" focusBorderWidth="0"/>
      <descriptor id="dSlide"   			       	region="rgSlide" focusIndex="luaIdx" focusBorderWidth="0"/>
    </descriptorBase>

    <!-- library of used connectors -->
    <connectorBase>
      <importBase documentURI="connector.ncl" alias="conBase"/>
    </connectorBase>

  </head>
  
  <body>
    <port id="pInicia" component="mIcon"/>

    <media id="mVideo" src="sbtvd-ts://0" descriptor="dVideo">
      <property name="bounds"/>
      <property name="zIndex" value="7"/>
    </media>

    <media id="settings" type="application/x-ginga-settings" >
      <property name="service.currentKeyMaster" value="luaIdx"/>
    </media>

    <media id="mBgd"     src="media/menu/tela1/fundo.png"    descriptor="dBgd"/>
    <media id="mBgd2"    src="media/menu/tela2/fundo2.png"   descriptor="dBgd2"/>
    <media id="mBgdBlack"          src="media/fundoPreto.png"          descriptor="dBgdBlack"/>
    <media id="mIcon"        src="media/menu/icon.png"         	descriptor="dIcon"/>
    <media id="logo"   		    src="media/menu/tela1/0.png"  descriptor="dLogo"/>

    <!-- Medias Frame Red -->
    <media id="menuRedOff"      src="media/menu/tela1/1.png"  descriptor="dMenuRedOff"/>
    <media id="menuRedOn"       src="media/menu/tela1/1a.png" descriptor="dMenuRed"/>
    <media id="btnRedSelec"     src="media/menu/tela1/1a.png" descriptor="dFrameRedBtnSelect"/>
    <media id="mSlideDic"       src="slideDic.lua" 			      descriptor="dSlide">
      <area id="incSlideDic"/>
    </media>

    <!-- Medias Frame Green -->
    <media id="menuGreenOff"    src="media/menu/tela1/2.png"  descriptor="dMenuGreenOff"/>
    <media id="menuGreenOn"     src="media/menu/tela1/2a.png" descriptor="dMenuGreen"/>
		<media id="btnGreenSelec"   src="media/menu/tela1/2a.png" descriptor="dFrameGreenBtnSelect"/>
		<media id="mGame" 		     src="media/gamedango/game.lua" descriptor="dGame">
      <area id="incGame"/>
    </media>

    <!-- Media Frame Yellow -->
    <media id="menuYellowOff"   src="media/menu/tela1/3.png"  descriptor="dMenuYellowOff"/>
    <media id="menuYellowOn"    src="media/menu/tela1/3a.png" descriptor="dMenuYellow"/>
    <media id="btnYellowSelec"  src="media/menu/tela1/3a.png" descriptor="dFrameYellowBtnSelect"/>
    <media id="mSlidePers"       src="slidePersonagens.lua"   descriptor="dSlide">
      <area id="incSlidePers"/>
    </media>

    <!-- Media Frame Blue -->
    <media id="menuBlueOff"  src="media/menu/tela1/4.png"     descriptor="dMenuBlueOff"/>
    <media id="menuBlueOn"   src="media/menu/tela1/4a.png"    descriptor="dMenuBlue"/>
    <media id="btnBlueSelec" src="media/menu/tela1/4a.png"    descriptor="dFrameBlueBtnSelect"/>
    <media id="mSlideInfo"       src="slideInfo.lua" 			      descriptor="dSlide">
      <area id="incSlideInfo"/>
    </media>
    
    <!-- Link Icon Interact -->
    <link id="link_onBeginVideo"  xconnector="conBase#onBeginStart">
      <bind role="onBegin" component="mIcon"/>
      <bind role="start"   component="mVideo" />
    </link>

    <!-- Link Start Interface -->
    <link id="link_iconMenuSelect" xconnector="conBase#onSelectionIconMenuResizeVideo">
      <bind role="onSelection" component="mIcon">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="varSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
      <bind role="stop"  component="mIcon"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="logo"/>
      <bind role="start"   component="menuRedOff"/>
      <bind role="start"   component="menuGreenOff"/>
      <bind role="start"   component="menuYellowOff"/>
      <bind role="start"   component="menuBlueOff"/>
      <bind role="start" component="menuRedOn"/>
    </link>


    <!-- Exit Main Menu-->
   <link id="lMainExit" xconnector="conBase#onSelectionStartStopSet">

      <bind role="onSelection" component="mBgd">
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
      <bind role="stop" component="mBgd"/>

			<bind role="set"  component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="0%,0%,100%,100%"/>
      </bind>
      <bind role="start" component="mIcon"/>
    </link>

    <!-- especifico Red  slide dicionario tupi   -->

    <link id="lEnterFrameRed" xconnector="conBase#onSelectionStartStopSet">
      <bind role="onSelection" component="menuRedOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="onSelection" component="logo">
        <bindParam name="keyCode" value="RED"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop"   component="logo"/>
      <bind role="stop"   component="menuRedOff"/>
      <bind role="stop"   component="menuGreenOff"/>
      <bind role="stop"   component="menuYellowOff"/>
      <bind role="stop"   component="menuBlueOff"/>
      <bind role="stop"   component="menuRedOn"/>
      <bind role="stop"   component="menuGreenOn"/>
      <bind role="stop"   component="menuYellowOn"/>
      <bind role="stop"   component="menuBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="btnRedSelec"/>
      <bind role="start" component="mSlideDic"/>
    </link>

    <link id="lExitFrameRed" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mSlideDic" interface="incSlideDic"/>
      <bind role="stop" component="mSlideDic"/>
      <bind role="stop" component="btnRedSelec"/>
      <bind role="stop"  component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="logo"/>
      <bind role="start"   component="menuRedOff"/>
      <bind role="start"   component="menuGreenOff"/>
      <bind role="start"   component="menuYellowOff"/>
      <bind role="start"   component="menuBlueOff"/>
      <bind role="start" component="menuRedOn"/>
      <bind role="start" component="menuRedOn"/>
      <bind role="set"   component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
    </link>
    

    <link id="lFocusBeginSlideDic" xconnector="conBase#onBeginSet">
      <bind role="onBegin" component="mSlideDic" />
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value="luaIdx"/>   
      </bind>
    </link>

    <link id="lFocusEndSlideDic" xconnector="conBase#onEndSet">
      <bind role="onEnd" component="mSlideDic"/>
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value=""/>
      </bind>
    </link>

    <!-- especifico GREEN  game  -->

    <link id="link_frameGreenSelection" xconnector="conBase#onSelectionStartStopSet">
      <bind role="onSelection" component="menuGreenOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
            <bind role="onSelection" component="mBgd">
        <bindParam name="keyCode" value="GREEN"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop"   component="logo"/>
      <bind role="stop"   component="menuRedOff"/>
      <bind role="stop"   component="menuGreenOff"/>
      <bind role="stop"   component="menuYellowOff"/>
      <bind role="stop"   component="menuBlueOff"/>
      <bind role="stop"   component="menuRedOn"/>
      <bind role="stop"   component="menuGreenOn"/>
      <bind role="stop"   component="menuYellowOn"/>
      <bind role="stop"   component="menuBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="btnGreenSelec"/>
      <bind role="start"  component="mGame"/>
    </link>


    <link id="lExitFrameGreen" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mGame" interface="incGame"/>
      <bind role="stop" component="mGame"/>
      <bind role="stop" component="btnGreenSelec"/>
      <bind role="stop" component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="logo"/>
      <bind role="start"   component="menuRedOff"/>
      <bind role="start"   component="menuGreenOff"/>
      <bind role="start"   component="menuYellowOff"/>
      <bind role="start"   component="menuBlueOff"/>
      <bind role="start" component="menuGreenOn"/>
      <bind role="set"   component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
    </link>

    <link id="lFocusBeginGame" xconnector="conBase#onBeginSet">
      <bind role="onBegin" component="mGame"/>
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value="luaIdx"/>
      </bind>
    </link>
    
    <link id="lFocusEndGame" xconnector="conBase#onEndSet">
      <bind role="onEnd" component="mGame"/>
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value=""/>
      </bind>
    </link>

    <!-- Yellow Frame  :  slide personagens   -->

    <link id="lEnterFrameYellow" xconnector="conBase#onSelectionStartStopSet">
      <bind role="onSelection" component="menuYellowOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="onSelection" component="logo">
        <bindParam name="keyCode" value="YELLOW"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop"   component="logo"/>
      <bind role="stop"   component="menuRedOff"/>
      <bind role="stop"   component="menuGreenOff"/>
      <bind role="stop"   component="menuYellowOff"/>
      <bind role="stop"   component="menuBlueOff"/>
      <bind role="stop"   component="menuRedOn"/>
      <bind role="stop"   component="menuGreenOn"/>
      <bind role="stop"   component="menuYellowOn"/>
      <bind role="stop"   component="menuBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="btnYellowSelec"/>
      <bind role="start" component="mSlidePers"/>
    </link>

    <link id="lExitFrameYellow" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mSlidePers" interface="incSlidePers"/>
      <bind role="stop" component="mSlidePers"/>
      <bind role="stop" component="btnYellowSelec"/>
      <bind role="stop"  component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="logo"/>
      <bind role="start"   component="menuRedOff"/>
      <bind role="start"   component="menuGreenOff"/>
      <bind role="start"   component="menuYellowOff"/>
      <bind role="start"   component="menuBlueOff"/>
      <bind role="start" component="menuYellowOn"/>

      <bind role="set"   component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
    </link>

    <link id="lFocusBeginSlidePers" xconnector="conBase#onBeginSet">
      <bind role="onBegin" component="mSlidePers" />
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value="luaIdx"/>   
      </bind>
    </link>

    <link id="lFocusEndSlidePers" xconnector="conBase#onEndSet">
      <bind role="onEnd" component="mSlidePers"/>
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value=""/>
      </bind>
    </link>


    <!-- especifico blue  slide informacoes   -->

    <link id="lEnterFrameBlue" xconnector="conBase#onSelectionStartStopSet">
      <bind role="onSelection" component="menuBlueOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="onSelection" component="logo">
        <bindParam name="keyCode" value="BLUE"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop" component="logo"/>
      <bind role="stop" component="menuRedOff"/>
      <bind role="stop" component="menuGreenOff"/>
      <bind role="stop" component="menuYellowOff"/>
      <bind role="stop" component="menuBlueOff"/>
      <bind role="stop" component="menuRedOn"/>
      <bind role="stop" component="menuGreenOn"/>
      <bind role="stop" component="menuYellowOn"/>
      <bind role="stop" component="menuBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="btnBlueSelec"/>
      <bind role="start" component="mSlideInfo"/>
    </link>
    
    <link id="lExitFrameBlue" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mSlideInfo" interface="incSlideInfo"/>
      <bind role="stop" component="mSlideInfo"/>
      <bind role="stop" component="btnBlueSelec"/>
      <bind role="stop"  component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start" component="logo"/>
      <bind role="start" component="menuRedOff"/>
      <bind role="start" component="menuGreenOff"/>
      <bind role="start" component="menuYellowOff"/>
      <bind role="start" component="menuBlueOff"/>
      <bind role="start" component="menuBlueOn"/>

      <bind role="set"   component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
    </link>

    <link id="lFocusBeginSlideInfo" xconnector="conBase#onBeginSet">
      <bind role="onBegin" component="mSlideInfo" />
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value="luaIdx"/>
      </bind>
    </link>

    <link id="lFocusEndSlideInfo" xconnector="conBase#onEndSet">
      <bind role="onEnd" component="mSlideInfo"/>
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value=""/>
      </bind>
    </link>


    <!-- Turn on icons on main menu using keys (UP/DOWN)-->

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

    <!--AO LIGAR ALGUM "BOTAO ON", APAGA TODOS OS OUTROS-->
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

  </body>
</ncl>
