<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="Mulhere-se" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <connectorBase>
      <causalConnector id="onBeginStart">
        <simpleCondition role="onBegin"/>
        <simpleAction role="start" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onBeginStop">
        <simpleCondition role="onBegin"/>
        <simpleAction role="stop" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onEndStop">
        <simpleCondition role="onEnd"/>
        <simpleAction role="stop" max="unbounded" qualifier="par"/>
      </causalConnector>
      
      <causalConnector id="onSelectionStartStopSet">
        <connectorParam name="keyCode"/>
        <connectorParam name="valueSet"/>
        <simpleCondition role="onSelection" key="$keyCode"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        <simpleAction role="set" max="unbounded" qualifier="seq" value="$valueSet"/> 
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStopStart">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStopStart">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStart">
        <connectorParam name="keyCode"/>
        <simpleCondition role="onSelection" key="$keyCode"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStartStop">
        <connectorParam name="keyCode"/>
        <simpleCondition role="onSelection" key="$keyCode"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionIconMenuResizeVideo">
        <connectorParam name="varSet"/>
        <connectorParam name="keyCode"/>
        <simpleCondition role="onSelection" key="$keyCode"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="par"/>
          <simpleAction role="start" max="unbounded" qualifier="par"/>
          <simpleAction role="set" max="unbounded"  value="$varSet"/>
        </compoundAction>
      </causalConnector>


      <causalConnector id="onBeginSet">
        <connectorParam name="value"/>
        <simpleCondition role="onBegin"/>
        <simpleAction role="set" value="$value"/>
      </causalConnector>
      
      <causalConnector id="onBeginStartStop">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
        	<simpleAction role="start" max="unbounded" qualifier="par"/>
        	<simpleAction role="stop"  max="unbounded" qualifier="par"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndSet">
        <connectorParam name="value"/>
        <simpleCondition role="onEnd"/>
        <simpleAction role="set" value="$value"/>
      </causalConnector>
    </connectorBase>
  </head>
</ncl>
