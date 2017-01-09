<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="DangoBalango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <regionBase>
      <region id="rgBgd"                                   width="100%"   height="100%"    zIndex="2"/>
      <region id="rgBgd2"                                  width="100%"   height="100%"    zIndex="2"/>
      <region id="rgVideo"                                 width="100%"   height="100%"    zIndex="7"/>
      <region id="rgIconOK"      left="89%"    top="90%"   width="10.677%"  height="9.259%" zIndex="8"/>
      <region id="rgIconRed"     left="8%"     top="32%"   width="15.52%" height="15.55%"  zIndex="5"/>
      <region id="rgIconGreen"   left="8%"     top="48%"   width="14.53%" height="10.74%"  zIndex="5"/>
      <region id="rgIconYellow"  left="8%"     top="60%"   width="13.38%" height="13.61%"  zIndex="5"/>
      <region id="rgIconBlue"    left="8%"     top="75%"   width="11.82%" height="8.61%"   zIndex="5"/>
      <region id="rgFrameRed"    left="22%"    top="73%"   width="15.52%" height="15.55%"  zIndex="4"/>
      <region id="rgFrameGreen"  left="22%"    top="75%"   width="14.53%" height="10.74%"  zIndex="4"/>
      <region id="rgFrameYellow" left="22%"    top="75%"   width="13.38%" height="13.61%"  zIndex="4"/>
      <region id="rgFrameBlue"   left="23.5%"  top="77%"   width="11.82%" height="8.61%"  zIndex="4"/>
      <region id="rgLogo"        left="3%" 	   top="1%"    width="22.08%" height="84.16%"  zIndex="3"/>
      <region id="rgSlide"       left="4.99%"  top="13.6%" width="48%"    height="54.5%" zIndex="4"/>
      <region id="rgGame"        left="4.99%"  top="13.6%" width="48%"    height="54.5%" zIndex="4"/>
      <region id="rgArrowL"      left="7%"     top="67%"   width="6.25%"    height="6.25%" zIndex="5"/>
      <region id="rgArrowR"      left="45%"    top="67%"   width="6.25%"    height="6.25%" zIndex="5"/>
    </regionBase>
    
    <descriptorBase>
      <descriptor id="dBgd"          region="rgBgd"/>
      <descriptor id="dBgd2"         region="rgBgd2"/>
      <descriptor id="dVideo"        region="rgVideo"/>
      <descriptor id="dIconOK"       region="rgIconOK"/>
      <descriptor id="dFrameRed"     region="rgFrameRed"/>
      <descriptor id="dFrameGreen"   region="rgFrameGreen"/>
      <descriptor id="dFrameYellow"  region="rgFrameYellow"/>
      <descriptor id="dFrameBlue"    region="rgFrameBlue"/>
     	<descriptor id="dIconRed"      region="rgIconRed"/>
      <descriptor id="dIconGreen"    region="rgIconGreen"/>
      <descriptor id="dIconYellow"   region="rgIconYellow"/>
      <descriptor id="dIconBlue"     region="rgIconBlue"/>
      <descriptor id="dLogo"         region="rgLogo"/>      
      <descriptor id="dArrowR"       region="rgArrowR"/>
      <descriptor id="dArrowL"       region="rgArrowL"/>
	    <descriptor id="dGame"   		 	 region="rgGame" focusIndex="luaIdx" focusBorderWidth="0"/>
      <descriptor id="dSlide"   		 region="rgSlide" focusIndex="luaIdx" focusBorderWidth="0"/>
    </descriptorBase>

    <!-- library of used connectors -->
    <connectorBase>
      <importBase documentURI="connector.ncl" alias="conBase"/>
    </connectorBase>

  </head>
  
  <body>
    <port id="pInicia" component="mIconOK"/>

    <media id="mVideo" src="sbtvd-ts://0" descriptor="dVideo">
      <property name="bounds"/>
      <property name="zIndex" value="7"/>
    </media>

    <media id="settings" type="application/x-ginga-settings" >
      <property name="service.currentKeyMaster" value="mGame"/>
      <property name="service.currentFocus" value="luaIdx"/>
    </media>

    <media id="mBgd"    src="media/menu/tela1/fundo.png"    descriptor="dBgd"/>
    <media id="mBgd2"   src="media/menu/tela2/fundo2.png"   descriptor="dBgd2"/>
    <media id="mIconOK"   src="media/menu/icon.png"         	descriptor="dIconOK"/>
    <media id="mLogo"   src="media/menu/tela1/0.png"  descriptor="dLogo"/>
    <media id="mArrowR" src="media/menu/tela2/arrow_right.png"  descriptor="dArrowR"/>
    <media id="mArrowL" src="media/menu/tela2/arrow_left.png"  descriptor="dArrowL"/>

    <!-- Medias Frame Red -->
    <media id="mIconRedOff"      src="media/menu/tela1/1.png"  descriptor="dIconRed"/>
    <media id="mIconRedOn"       src="media/menu/tela1/1a.png" descriptor="dIconRed"/>
    <media id="mFrameRed"     src="media/menu/tela1/1a.png" descriptor="dFrameRed"/>
    <media id="mSlideDic"       src="slideDic.lua" 			      descriptor="dSlide">
      <area id="incSlideDic" label="lSlideDic"/>
    </media>

    <!-- Medias Frame Green -->
    <media id="mIconGreenOff" src="media/menu/tela1/2.png"   descriptor="dIconGreen"/>
    <media id="mIconGreenOn"  src="media/menu/tela1/2a.png"  descriptor="dIconGreen"/>
		<media id="mFrameGreen"   src="media/menu/tela1/2a.png"  descriptor="dFrameGreen"/>
		<media id="mGame" 		    src="media/gamedango/game.lua" descriptor="dGame">
      <area id="incGame" label="lGame"/>
    </media>

    <!-- Media Frame Yellow -->
    <media id="mIconYellowOff" src="media/menu/tela1/3.png"  descriptor="dIconYellow"/>
    <media id="mIconYellowOn"  src="media/menu/tela1/3a.png" descriptor="dIconYellow"/>
    <media id="mFrameYellow"   src="media/menu/tela1/3a.png" descriptor="dFrameYellow"/>
    <media id="mSlidePers"     src="slidePersonagens.lua"    descriptor="dSlide">
      <area id="incSlidePers" label="lSlidePers"/>
    </media>

    <!-- Media Frame Blue -->
    <media id="mIconBlueOff" src="media/menu/tela1/4.png"  descriptor="dIconBlue"/>
    <media id="mIconBlueOn"  src="media/menu/tela1/4a.png" descriptor="dIconBlue"/>
    <media id="mFrameBlue"   src="media/menu/tela1/4a.png" descriptor="dFrameBlue"/>
    <media id="mSlideInfo"   src="slideInfo.lua" 			     descriptor="dSlide">
      <area id="incSlideInfo" label="lSlideInfo"/>
    </media>
    
    <!-- Link Icon Interact -->
    <link id="link_onBeginVideo"  xconnector="conBase#onBeginStart">
      <bind role="onBegin" component="mIconOK"/>
      <bind role="start"   component="mVideo" />
    </link>

    <!-- Link Start Interface -->
    <link id="link_iconMenuSelect" xconnector="conBase#onSelectionIconMenuResizeVideo">
      <bind role="onSelection" component="mIconOK">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="varSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
      <bind role="stop"    component="mIconOK"/>
      <bind role="start"   component="mBgd"/>
      <bind role="start"   component="mLogo"/>
      <bind role="start"   component="mIconRedOn"/>
      <bind role="start"   component="mIconGreenOff"/>
      <bind role="start"   component="mIconYellowOff"/>
      <bind role="start"   component="mIconBlueOff"/>

    </link>


    <!-- Exit Main Menu-->
   <link id="lMainExit" xconnector="conBase#onSelectionStartStopSet">

      <bind role="onSelection" component="mBgd">
        <bindParam name="keyCode" value="EXIT"/>
      </bind>
      <bind role="stop" component="mLogo"/>
      <bind role="stop" component="mIconRedOn"/>
      <bind role="stop" component="mIconGreenOn"/>
      <bind role="stop" component="mIconYellowOn"/>
      <bind role="stop" component="mIconBlueOn"/>
      <bind role="stop" component="mIconRedOff"/>
      <bind role="stop" component="mIconGreenOff"/>
      <bind role="stop" component="mIconYellowOff"/>
      <bind role="stop" component="mIconBlueOff"/>
      <bind role="stop" component="mBgd"/>

			<bind role="set"  component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="0%,0%,100%,100%"/>
      </bind>
      <bind role="start" component="mIconOK"/>
    </link>

    <!-- especifico Red  slide dicionario tupi   -->

    <link id="lEnterFrameRed" xconnector="conBase#onSelectionStartStopSet">
      <bind role="onSelection" component="mIconRedOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="onSelection" component="mLogo">
        <bindParam name="keyCode" value="RED"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop"   component="mLogo"/>
      <bind role="stop"   component="mIconRedOff"/>
      <bind role="stop"   component="mIconGreenOff"/>
      <bind role="stop"   component="mIconYellowOff"/>
      <bind role="stop"   component="mIconBlueOff"/>
      <bind role="stop"   component="mIconRedOn"/>
      <bind role="stop"   component="mIconGreenOn"/>
      <bind role="stop"   component="mIconYellowOn"/>
      <bind role="stop"   component="mIconBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="mFrameRed"/>
      <bind role="start" component="mArrowL"/>
      <bind role="start" component="mArrowR"/>
      <bind role="start" component="mSlideDic"/>
    </link>

    <link id="lExitFrameRed" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mSlideDic" interface="incSlideDic"/>
      <bind role="stop" component="mSlideDic"/>
      <bind role="stop" component="mFrameRed"/>
      <bind role="stop"  component="mBgd2"/>
      <bind role="stop" component="mArrowL"/>
      <bind role="stop" component="mArrowR"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="mLogo"/>
      <bind role="start" component="mIconRedOn"/>
      <bind role="start"   component="mIconGreenOff"/>
      <bind role="start"   component="mIconYellowOff"/>
      <bind role="start"   component="mIconBlueOff"/>
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
      <bind role="onSelection" component="mIconGreenOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
            <bind role="onSelection" component="mBgd">
        <bindParam name="keyCode" value="GREEN"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop"   component="mLogo"/>
      <bind role="stop"   component="mIconRedOff"/>
      <bind role="stop"   component="mIconGreenOff"/>
      <bind role="stop"   component="mIconYellowOff"/>
      <bind role="stop"   component="mIconBlueOff"/>
      <bind role="stop"   component="mIconRedOn"/>
      <bind role="stop"   component="mIconGreenOn"/>
      <bind role="stop"   component="mIconYellowOn"/>
      <bind role="stop"   component="mIconBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="mFrameGreen"/>
      <bind role="start"  component="mGame"/>
    </link>


    <link id="lExitFrameGreen" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mGame" interface="incGame"/>
      <bind role="stop" component="mGame"/>
      <bind role="stop" component="mFrameGreen"/>
      <bind role="stop" component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="mLogo"/>
      <bind role="start"   component="mIconRedOff"/>
      <bind role="start"   component="mIconGreenOn"/>
      <bind role="start"   component="mIconYellowOff"/>
      <bind role="start"   component="mIconBlueOff"/>
      <bind role="start" component="mIconGreenOn"/>
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
      <bind role="onSelection" component="mIconYellowOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="onSelection" component="mLogo">
        <bindParam name="keyCode" value="YELLOW"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop"   component="mLogo"/>
      <bind role="stop"   component="mIconRedOff"/>
      <bind role="stop"   component="mIconGreenOff"/>
      <bind role="stop"   component="mIconYellowOff"/>
      <bind role="stop"   component="mIconBlueOff"/>
      <bind role="stop"   component="mIconRedOn"/>
      <bind role="stop"   component="mIconGreenOn"/>
      <bind role="stop"   component="mIconYellowOn"/>
      <bind role="stop"   component="mIconBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="mFrameYellow"/>
      <bind role="start" component="mArrowL"/>
      <bind role="start" component="mArrowR"/>
      <bind role="start" component="mSlidePers"/>
    </link>

    <link id="lExitFrameYellow" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mSlidePers" interface="incSlidePers"/>
      <bind role="stop" component="mSlidePers"/>
      <bind role="stop" component="mFrameYellow"/>
      <bind role="stop" component="mArrowL"/>
      <bind role="stop" component="mArrowR"/>
      <bind role="stop"  component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start"   component="mLogo"/>
      <bind role="start"   component="mIconRedOff"/>
      <bind role="start"   component="mIconGreenOff"/>
      <bind role="start"   component="mIconYellowOn"/>
      <bind role="start"   component="mIconBlueOff"/>
      <bind role="set"   component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
      </bind>
    </link>

    <link id="lFocusBeginSlidePers" xconnector="conBase#onBeginSet">
      <bind role="onBegin" component="mSlidePers" />
      <bind role="set" component="settings" interface="service.currentKeyMaster">
        <bindParam name="value" value="luaIdx"/>   
      </bind>
      <bind role="set" component="settings" interface="service.currentFocus">
        <bindParam name="value" value="mSlidePers"/>   
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
      <bind role="onSelection" component="mIconBlueOn">
        <bindParam name="keyCode" value="ENTER"/>
      </bind>
      <bind role="onSelection" component="mLogo">
        <bindParam name="keyCode" value="BLUE"/>
      </bind>
      <bind role="set" component="mVideo" interface="bounds">
        <bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>
      </bind> 
      <bind role="stop" component="mBgd"/>
      <bind role="stop" component="mLogo"/>
      <bind role="stop" component="mIconRedOff"/>
      <bind role="stop" component="mIconGreenOff"/>
      <bind role="stop" component="mIconYellowOff"/>
      <bind role="stop" component="mIconBlueOff"/>
      <bind role="stop" component="mIconRedOn"/>
      <bind role="stop" component="mIconGreenOn"/>
      <bind role="stop" component="mIconYellowOn"/>
      <bind role="stop" component="mIconBlueOn"/>
      <bind role="start" component="mBgd2"/>
      <bind role="start" component="mFrameBlue"/>
      <bind role="start" component="mArrowL"/>
      <bind role="start" component="mArrowR"/>
      <bind role="start" component="mSlideInfo"/>
    </link>
    
    <link id="lExitFrameBlue" xconnector="conBase#onBeginStopStartSet">
      <bind role="onBegin" component="mSlideInfo" interface="incSlideInfo"/>
      <bind role="stop" component="mSlideInfo"/>
      <bind role="stop" component="mFrameBlue"/>
      <bind role="stop" component="mArrowL"/>
      <bind role="stop" component="mArrowR"/>
      <bind role="stop"  component="mBgd2"/>
      <bind role="start" component="mBgd"/>
      <bind role="start" component="mLogo"/>
      <bind role="start" component="mIconRedOff"/>
      <bind role="start" component="mIconGreenOff"/>
      <bind role="start" component="mIconYellowOff"/>
      <bind role="start" component="mIconBlueOn"/>
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
    <link id="link_frameRedUp" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconRedOn">
        <bindParam name="keyCode" value="CURSOR_UP"/>
      </bind>
      <bind role="start" component="mIconRedOff"/>
      <bind role="start" component="mIconBlueOn"/>
      <bind role="stop" component="mIconRedOn"/>
      <bind role="stop" component="mIconBlueOff"/>

    </link>

    <link id="link_frameRedDown" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconRedOn">
        <bindParam name="keyCode" value="CURSOR_DOWN"/>
      </bind>
      <bind role="start" component="mIconRedOff"/>
      <bind role="start" component="mIconGreenOn"/>
      <bind role="stop" component="mIconRedOn"/>
      <bind role="stop" component="mIconGreenOff"/>
    </link>

    <!-- GREEN -->
    <link id="link_frameGreenUp" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconGreenOn">
        <bindParam name="keyCode" value="CURSOR_UP"/>
      </bind>
      <bind role="start" component="mIconGreenOff"/>
      <bind role="start" component="mIconRedOn"/>
      <bind role="stop" component="mIconGreenOn"/>
      <bind role="stop" component="mIconRedOff"/>
    </link>

    <link id="link_frameGreenDown" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconGreenOn">
        <bindParam name="keyCode" value="CURSOR_DOWN"/>
      </bind>
      <bind role="start" component="mIconGreenOff"/>
      <bind role="start" component="mIconYellowOn"/>
      <bind role="stop" component="mIconGreenOn"/>
      <bind role="stop" component="mIconYellowOff"/>
    </link>

    <!-- YELLOW -->
    <link id="link_frameYellowUp" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconYellowOn">
        <bindParam name="keyCode" value="CURSOR_UP"/>
      </bind>
      <bind role="start" component="mIconYellowOff"/>
      <bind role="start" component="mIconGreenOn"/>
      <bind role="stop" component="mIconYellowOn"/>
      <bind role="stop" component="mIconGreenOff"/>
    </link>

    <link id="link_frameYellowDown" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconYellowOn">
        <bindParam name="keyCode" value="CURSOR_DOWN"/>
      </bind>
      <bind role="start" component="mIconYellowOff"/>
      <bind role="start" component="mIconBlueOn"/>
      <bind role="stop" component="mIconYellowOn"/>
      <bind role="stop" component="mIconBlueOff"/>
    </link>

    <!-- BLUE -->
    <link id="link_frameBlueUp" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconBlueOn">
        <bindParam name="keyCode" value="CURSOR_UP"/>
      </bind>
      <bind role="start" component="mIconBlueOff"/>
      <bind role="start" component="mIconYellowOn"/>
      <bind role="stop" component="mIconBlueOn"/>
      <bind role="stop" component="mIconYellowOff"/>
    </link>

    <link id="link_frameBlueDown" xconnector="conBase#onSelectionStartStop">
      <bind role="onSelection" component="mIconBlueOn">
        <bindParam name="keyCode" value="CURSOR_DOWN"/>
      </bind>
      <bind role="start" component="mIconBlueOff"/>
      <bind role="start" component="mIconRedOn"/>
      <bind role="stop" component="mIconBlueOn"/>
      <bind role="stop" component="mIconRedOff"/>
    </link>

  </body>
</ncl>
