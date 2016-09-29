<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="DangoBalango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
      <regionBase>
        	<region id="rgBackGroundImage"                              width="100%"        height="100%"    zIndex="1"/>
            <region id="rgFullScreenMedia"                              width="100%"        height="100%"    zIndex="3"/>
            <region id="rgIconInteract"         left="95%" top="8%"  	width="2.55%"       height="4.44%"    zIndex="3"/>
            <region id="rgFrameRed"             left="8%"  top="32%"  	width="15.52%"      height="15.55%"   zIndex="8"/>
            <region id="rgFrameGreen"           left="8%"  top="48%"    width="14.53%"      height="10.74%"    zIndex="8"/>
            <region id="rgFrameYellow"          left="8%"  top="60%"  	width="13.38%"      height="13.61%"   zIndex="8"/>
            <region id="rgFrameBlue"            left="8%"  top="75%"  	width="11.82%"      height="8.61%"   zIndex="8"/>
            <region id="rgFrameRedBtnSelect"    left="8%"  top="75%"  	width="10.57%"      height="13.42%"   zIndex="8"/>
            <region id="rgFrameGreenBtnSelect"  left="8%"  top="75%"  	width="10.57%"      height="13.42%"   zIndex="8"/>
            <region id="rgFrameYellowBtnSelect"  left="8%"  top="75%"  	width="10.57%"      height="13.42%"   zIndex="8"/>
            <region id="rgFrameBlueBtnSelect"  left="8%"  top="75%"  	width="10.57%"      height="13.42%"   zIndex="8"/>
            <region id="rgFrameRedOff"          left="8%"  top="32%"    width="15.52%"      height="15.55%"     zIndex="7"/>
            <region id="rgFrameGreenOff"        left="8%"  top="48%"   	width="14.53%"      height="10.74%"    zIndex="7"/>
            <region id="rgFrameYellowOff"       left="8%"  top="60%"  	width="13.38%"      height="13.61%"   zIndex="7"/>
            <region id="rgFrameBlueOff"         left="8%"  top="75%"  	width="11.82%"      height="8.61%"    zIndex="7"/>
            <region id="rgLogo"         		left="3%" 	top="1%" width="22.08%" 	   height="84.16%"     zIndex="4"/>
            <region id="rgMenuAux"              left="4.69%"  top="54.63%" width="42.92%"      height="39.815%" zIndex="3"/>
            <region id="rgFaixaBotoes"    		left="51.77%" top="10.19%" width="42.92%"      height="0.39%"   zIndex="6"/>
            <region id="rgFrameTelaInicial"     left="51.77%" top="10.56%" width="42.92%"      height="75.56%"  zIndex="5"/>
            <region id="rgMenuAuxLua"           left="4.7%"   top="52%"    width="45.4%"       height="40%"     zIndex="4"/>
           
            <region id="rgBtnExit"             				  top="89%"  width="100%"       height="9.6%"    zIndex="8"/>
            <region id="rgFaixaTelaInicial"     left="54.94%" top="9.5%"   width="41.4583%"    height="0.8%"    zIndex="8"/>
        </regionBase>

        <descriptorBase>
            <descriptor id="deBackGroundImage"      region="rgBackGroundImage"/>
            <descriptor id="deFullScreenMedia"      region="rgFullScreenMedia"/>
            <descriptor id="deFaixaTelaInicial"     region="rgFaixaTelaInicial"/>
            <descriptor id="deFrame"      			region="rgFrameTelaInicial"/>
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
            <descriptor id="deBtnExit"              region="rgBtnExit"/>
            <descriptor id="deMenuAuxLua"           region="rgMenuAuxLua"/>
            <descriptor id="deMenuAux"              region="rgMenuAux"/>
            <descriptor id="deLogo"         		region="rgLogo"/>      
            <descriptor id="deFaixaBotoes"          region="rgFaixaBotoes"/>
        </descriptorBase>

        <!-- library of used connectors -->
        <connectorBase>
            <importBase documentURI="connector.ncl" alias="conBase"/>
        </connectorBase>
    </head>

    <body>

        <port id="pInicia" component="mediaVideo"/>
        <!-- Extra -->
        <media id="backGroundImage"     src="media/menu/tela1/fundo.png"        								    descriptor="deBackGroundImage"/>
        <media id="backGroundImage2"     src="media/menu/tela2/fundo2.png"        								    descriptor="deBackGroundImage"/>
       <!--  <media id="botaoDir"       src="Media/menu/direita.png"      	  							    descriptor="deBotaoDireito"/>
        <media id="botaoEsquerdo"       src="Media/menu/esquerda.png"     	  								descriptor="deBotaoEsquerdo"/>
        <media id="botaoCima"       	src="Media/menu/cima.png"     		  								descriptor="deBotaoCima"/>
        <media id="botaoBaixo" 		    src="Media/menu/baixo.png"     	 				 					descriptor="deBotaoBaixo"/>
        <media id="Exit"                src="Media/extra/sair.png"         	  								descriptor="deBtnExit"/> -->
        <media id="iconInteract"        src="media/menu/icon.png"         	  								descriptor="deIconInteract"/>
        <media id="mediaVideo" src="sbtvd-ts://video" descriptor="deFullScreenMedia">
            <area id="icon" begin="2s"/>
            <property name="bounds"/>
            <property name="zIndex" value="3"/>
        </media>
        <media id="settings" type="application/x-ginga-settings" >
            <property name="service.currentKeyMaster" value=""/>
        </media>
        <!-- Frame Red -->
        <media id="menuRedOff"   		src="media/menu/tela1/1.png"     descriptor="deMenuRedOff"/>
        <media id="menuRedOn"    		src="media/menu/tela1/1a.png"        descriptor="deMenuRed"/>
        <media id="btnRedSelec"    		src="media/menu/tela2/aba_vermelha.png"   descriptor="deFrameRedBtnSelect"/>
       
        <!-- Frame Green -->
        <media id="menuGreenOff"  		src="media/menu/tela1/2.png"   descriptor="deMenuGreenOff"/>
        <media id="menuGreenOn"    		src="media/menu/tela1/2a.png"     descriptor="deMenuGreen"/>
		<media id="btnGreenSelec"       src="media/menu/tela2/aba_verde.png"   descriptor="deFrameGreenBtnSelect"/>
        	
        <!-- Frame Yellow -->
        <media id="menuYellowOff"       src="media/menu/tela1/3.png"  			 descriptor="deMenuYellowOff"/>
        <media id="menuYellowOn"        src="media/menu/tela1/3a.png"     			 descriptor="deMenuYellow"/>
        <media id="btnYellowSelec"      src="media/menu/tela2/aba_amarela.png"   descriptor="deFrameYellowBtnSelect"/>
        <!-- Frame Blue -->
        <media id="menuBlueOff"  src="media/menu/tela1/4.png"       				descriptor="deMenuBlueOff"/>
        <media id="menuBlueOn"   src="media/menu/tela1/4a.png"          			descriptor="deMenuBlue"/>
        <media id="btnBlueSelec"    		src="media/menu/tela2/aba_azul.png"   descriptor="deFrameBlueBtnSelect"/>
        
        <media id="logo"   		src="media/menu/tela1/0.png"     				descriptor="deLogo"/>
        <media id="btnExit1"   		src="media/menu/tela1/navagacao1.png"     	descriptor="deBtnExit"/>
        <media id="btnExit2"   		src="media/menu/tela2/navegacao2.png"     	descriptor="deBtnExit"/>
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
                <bindParam name="varSet" value="50.97%, 2.33%, 45.22%, 41.87%"/>
            </bind>
            <bind role="start" component="backGroundImage"/>
            <bind role="stop"  component="iconInteract"/>
        </link>

        <link id="link_onBeginStart" xconnector="conBase#onBeginStart">
            <bind role="onBegin" component="backGroundImage"/>
            <bind role="start"   component="menuRedOff"/>
            <bind role="start"   component="menuGreenOff"/>
            <bind role="start"   component="menuYellowOff"/>
            <bind role="start"   component="menuBlueOff"/>
            <bind role="start"   component="menuRedOn"/>
            <bind role="start"   component="logo"/>
            <bind role="start"   component="btnExit1"/>
         
        </link>
        <!--ASCENDE TAG PELOS BOTOES COLORIDOS-->
        <link id="Ir_Para_RedOn_TelaInicial" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuRedOff">
                <bindParam name="keyCode" value="RED"/>
            </bind>
            <bind role="start" component="menuRedOn"/>
        </link>
        <link id="Ir_Para_GreenOn_TelaInicial" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuGreenOff">
                <bindParam name="keyCode" value="GREEN"/>
            </bind>
            <bind role="start" component="menuGreenOn"/>
        </link>
        <link id="Ir_Para_YellowOn_TelaInicial" xconnector="conBase#onSelectionStart">
            <bind role="onSelection" component="menuYellowOff">
                <bindParam name="keyCode" value="YELLOW"/>
            </bind>
            <bind role="start" component="menuYellowOn"/>
        </link>
        <link id="Ir_Para_BlueOn_TelaInicial" xconnector="conBase#onSelectionStart">
	        <bind role="onSelection" component="menuBlueOff">
	            <bindParam name="keyCode" value="BLUE"/>
	        </bind>
        	<bind role="start" component="menuBlueOn"/>
        </link>
        
        <!--ASCENDE TAG PELAS SETAS DIRECIONAIS (ESC/DIR)-->
        <!-- Red -->
           <link id="link_frameRedSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuRedOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="start" component="backGroundImage2"/>
            <bind role="start" component="btnRedSelec"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuYellowOff"/>
            <bind role="stop" component="menuGreenOff"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuBlueOff"/>
            <bind role="stop" component="menuRedOff"/>
            <bind role="stop" component="logo"/>
            <bind role="stop" component="btnExit1"/>
            <bind role="start" component="btnExit2"/>
        </link>
        
        <link id="link_frameRedLeft" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuRedOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuBlueOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuYellowOff"/>
            <bind role="start" component="menuGreenOff"/>
        </link>
     
        <link id="link_frameRedRight" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuRedOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuGreenOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuYellowOff"/>
            <bind role="start" component="menuBlueOff"/>
        </link>
        <!-- Green -->
           <link id="link_frameGreenSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuGreenOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="start" component="backGroundImage2"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="stop" component="menuYellowOff"/>
            <bind role="stop" component="menuGreenOff"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="stop" component="menuBlueOff"/>
            <bind role="stop" component="menuRedOff"/>
            <bind role="stop" component="logo"/>
            <bind role="start" component="btnGreenSelec"/>
            <bind role="stop" component="btnExit1"/>
            <bind role="start" component="btnExit2"/>
        </link>
        
       <link id="link_frameGreenLeft" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuGreenOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuRedOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuYellowOff"/>
            <bind role="start" component="menuBlueOff"/>
        </link>
        <link id="link_frameGreenRight" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuGreenOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuYellowOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuBlueOff"/>
            <bind role="start" component="menuGreenOff"/>
        </link>
        <!-- Yellow -->
           <link id="link_frameYellowSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuYellowOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="start" component="backGroundImage2"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="stop" component="menuYellowOff"/>
            <bind role="stop" component="menuGreenOff"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuBlueOff"/>
            <bind role="stop" component="menuRedOff"/>
            <bind role="stop" component="logo"/>
            <bind role="start" component="btnYellowSelec"/>
        </link>
        
        <link id="link_frameYellowLeft" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuYellowOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuGreenOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuYellowOff"/>
            <bind role="start" component="menuBlueOff"/>
        </link>
        <link id="link_frameYellowRight" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuYellowOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuBlueOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuYellowOff"/>
            <bind role="start" component="menuGreenOff"/>
        </link>
        <!-- Blue -->
           <link id="link_frameBlueSelection" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuBlueOn">
            	<bindParam name="keyCode" value="ENTER"/>
            </bind>
            <bind role="start" component="backGroundImage2"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="stop" component="menuYellowOff"/>
            <bind role="stop" component="menuGreenOff"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="stop" component="menuBlueOff"/>
            <bind role="stop" component="menuRedOff"/>
            <bind role="stop" component="logo"/>
            <bind role="start" component="btnBlueSelec"/>
            <bind role="stop" component="btnExit1"/>
            <bind role="start" component="btnExit2"/>
        </link>
        
        <link id="link_frameBlueLeft" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuBlueOn">
                <bindParam name="keyCode" value="CURSOR_UP"/>
            </bind>
            <bind role="start" component="menuYellowOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="start" component="menuRedOff"/>
            <bind role="start" component="menuBlueOff"/>
            <bind role="start" component="menuGreenOff"/>
        </link>
        <link id="link_frameBlueRight" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="menuBlueOn">
                <bindParam name="keyCode" value="CURSOR_DOWN"/>
            </bind>
            <bind role="start" component="menuRedOn"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="start" component="menuBlueOff"/>
            <bind role="start" component="menuYellowOff"/>
            <bind role="start" component="menuGreenOff"/>
            <bind role="stop" component="btnExit1"/>
            <bind role="start" component="btnExit2"/>
        </link>
        
        <link id="link_Sair" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="btnExit1">
                <bindParam name="keyCode" value="EXIT"/>
            </bind>
            <bind role="start" component="iconInteract"/>
            <bind role="stop" component="menuBlueOn"/>
            <bind role="stop" component="menuYellowOn"/>
            <bind role="stop" component="menuGreenOn"/>
            <bind role="stop" component="menuRedOn"/>
            <bind role="stop" component="menuBlueOff"/>
            <bind role="stop" component="menuYellowOff"/>
            <bind role="stop" component="menuGreenOff"/>
            <bind role="stop" component="menuRedOff"/>
            <bind role="stop" component="logo"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="stop" component="btnExit1"/>
        </link>
         
        <link id="link_Sair2" xconnector="conBase#onSelectionStartStop">
            <bind role="onSelection" component="btnExit2">
                <bindParam name="keyCode" value="EXIT"/>
            </bind>
            <bind role="start" component="iconInteract"/>
            <bind role="stop" component="btnRedSelec"/>
            <bind role="stop" component="btnGreenSelec"/>
            <bind role="stop" component="btnYellowSelec"/>
            <bind role="stop" component="btnBlueSelec"/>  
            <bind role="stop" component="backGroundImage2"/>
            <bind role="stop" component="backGroundImage"/>
            <bind role="stop" component="btnExit2"/>
        </link>
        
    
    </body>
</ncl>
