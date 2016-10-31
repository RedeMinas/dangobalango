<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="buttonTestLUA" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
	<regionBase>
	  <region id="base" width="100%" height="100%"/>
	  
	</regionBase>
	<descriptorBase>
	  <descriptor id="baseDesc" region="base" focusIndex="1" focusBorderWidth="0"/>

	  
	</descriptorBase>

</head>

<body>
	<port id="inicio" component="script"/>
	
	<media id="varGlobal" type="application/x-ginga-settings" descriptor="baseDesc">
		<property name="service.currentKeyMaster" value="script"/>
	</media>
	
	
	<media id="script" src="main.lua" descriptor="baseDesc"/>

</body>

</ncl>
