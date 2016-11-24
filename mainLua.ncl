<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="buttonTestLUA" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
	<regionBase>
		<region id="rgVideo" width="100%" height="100%" zIndex="3"/>
	  <region id="base" width="100%" height="100%" zIndex="2"/>
	  <region id="rgIcon" width="2.5%" height="4.44%" left="50%" top="50%" zIndex="5"/>
	</regionBase>

	<descriptorBase>
	<descriptor id="baseDesc" region="base" focusIndex="1" focusBorderWidth="0"/>
	  <descriptor id="deIcon" region="rgIcon"  />
	   <descriptor id="deVideo" region="rgVideo"  />
	</descriptorBase>
	
	<connectorBase>
			<importBase documentURI="connector.ncl" alias="conBase"/>
      </connectorBase>
	</head>

	<body>

		<port id="picon" component="video"/>
	
	
	<media id="varGlobal" type="application/x-ginga-settings" descriptor="baseDesc">
	<property name="service.currentKeyMaster" />
	<property name="service.currentFocus" />
	</media>


	<media id="icone" src="midia/menu/icon.png" descriptor="deIcon"/>
  <media id="script" src="main.lua" descriptor="baseDesc"> <property name="propriedadea"/></media>
         
            <media id="video" src="video.mp4" descriptor="deVideo"><property name="bounds"/></media>
	 
            	
	<link id="link_iconMenuSelect" xconnector="conBase#onSelectionStartStopSet">
	   			<bind role="onSelection" component="icone">
                <bindParam name="keyCode" value="ENTER"/> 
            </bind>
            <bind role="start" component="script"/>
            <bind role="stop"  component="icone"/>
            <bind role="set" component="video" interface="bounds">
            <bindParam name="valueSet" value="37.10%, 20.65%, 54%, 54%"/>
            </bind>
            
            <!--<bindParam name="valueSet" value="61.40%,53.5%,30%,30%"/>-->
        </link>
       
         <link id="link_Video" xconnector="conBase#onBeginStart">
        <bind role="onBegin" component="video"/>
     	 <bind role="start" component="icone" />
    	</link>
    	 <link id="link_Vias" xconnector="conBase#onEndSet">
        <bind role="onEnd" component="icone"/>
     	<bind role="set" component="varGlobal" interface="service.currentKeyMaster">
            <bindParam name="value" value="script"/>                                                                                                               
            </bind>																				
    	</link>

    	 <link id="link_V" xconnector="conBase#onSelectionStartStopSet">
        <bind role="onSelection" component="script">
     	 <bindParam name="keyCode" value="EXIT"/> 
            </bind>
            <bind role="stop"  component="script"/>
            	<bind role="start" component="icone" />
            	 <bind role="set" component="video" interface="bounds">
            	 <bindParam name="valueSet" value="0%, 0%, 100%, 100%"/>
            </bind>
    	</link>

 	<link id="link_V" xconnector="conBase#onSelectionSet">
        <bind role="onSelection" component="script" interface="propriedadea">
     	 <bindParam name="keyCode" value="ENTER"/> 
            </bind>
          
            	 <bind role="set" component="video" interface="bounds">
            	 <bindParam name="var" value="61.40%,53.5%,30%,30%"/>
            </bind>
    	</link>

</body>
</ncl>
