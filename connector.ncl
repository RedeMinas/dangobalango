<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="Dango_Balango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>

        <connectorBase>
            <causalConnector id="onBeginStart">
                <simpleCondition role="onBegin"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
            </causalConnector>

             <causalConnector id="onEndStart">
                <simpleCondition role="onEnd"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onEndStop">
                <simpleCondition role="onEnd"/>
                <simpleAction role="stop" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onEndStartStart">
                <simpleCondition role="onEnd"/>
                 <compoundAction operator="seq">
                 <simpleAction role="start" max="unbounded" qualifier="par"/>
                <simpleAction role="stop" max="unbounded" qualifier="par"/>
                </compoundAction>
            </causalConnector>

            <causalConnector id="onEndVideoBeginLoop">
                <simpleCondition role="onEnd"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onEndIconMenu">
                <simpleCondition role="onEnd"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onSelection_orSet_varStopStart">
                <connectorParam name="var"/>
                <simpleCondition role="onSelection" qualifier="or" max="unbounded"/>
                <compoundAction operator="seq">
                    <simpleAction role="set" value="$var" max="unbounded" qualifier="par"/>
                    <simpleAction role="stop" value="$var" max="unbounded" qualifier="par"/>
                    <simpleAction role="start" value="$var" max="unbounded" qualifier="par"/>
                </compoundAction>
            </causalConnector>

            <causalConnector id="onSelectionSet_varStop">
                <connectorParam name="var"/>
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                    <simpleAction role="set" value="$var" max="unbounded" qualifier="par"/>
                    <simpleAction role="stop"/> 
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onSelectionSet_varStart">
                <connectorParam name="var"/>
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                    <simpleAction role="set" value="$var" max="unbounded" qualifier="par"/>
                    <simpleAction role="start"/> 
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onSelectionStart">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                  <simpleAction role="start" max="unbounded" qualifier="par"/>
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onSelectionStartStop">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                  <simpleAction role="start" max="unbounded" qualifier="par"/>
                   <simpleAction role="stop" max="unbounded" qualifier="par"/>
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onSelectionSet_var">
                <connectorParam name="var"/>
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                    <simpleAction role="set" value="$var" max="unbounded" qualifier="par"/>
                </compoundAction>               
            </causalConnector>

         

            <causalConnector id="onBeginIconMenu">
                <simpleCondition role="onBegin"/>
                <simpleAction role="stop" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onBeginSet">
                <connectorParam name="value"/>
                <simpleCondition role="onBegin"/>
                <simpleAction role="set" value="$value"/>
            </causalConnector>

         

            <causalConnector id="onSelectionKeySet">
                <connectorParam name="keyCode"/>
                <connectorParam name="value"/>
                <simpleCondition role="onSelection" key="$keyCode"/>
                <simpleAction role="set" value="$value" max="unbounded" qualifier="par"/>
            </causalConnector>
            <causalConnector id="onAbortSet">
                <connectorParam name="value"/>
                <simpleCondition role="onAbort"/>
                <simpleAction role="set" value="$value" max="unbounded" qualifier="par"/>
            </causalConnector>


            <causalConnector id="onBeginStart_delay">
                <connectorParam name="delay"/>
                <simpleCondition role="onBegin"/>
                <simpleAction role="start" delay="$delay" max="unbounded" qualifier="par"/>
            </causalConnector>
            <causalConnector id="onBeginStop">
                <simpleCondition role="onBegin"/>
                <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onKeySelectionSetStopStart">
                <connectorParam name="keyCode"/>
                <connectorParam name="var"/>                                    
                <simpleCondition role="onSelection" key="$keyCode"/>
                <compoundAction operator="seq">
                    <simpleAction role="stop" max="unbounded" qualifier="par"/>
                    <simpleAction role="start" max="unbounded" qualifier="par"/>    
                    <simpleAction role="set" value="$var" max="unbounded" qualifier="par"/>             
                </compoundAction>   
            </causalConnector>

     
            


        <causalConnector id="onEndSelection">
                <connectorParam name="keyCode"/>
                <simpleCondition role="onEndSelection" key="$keyCode"/>
                <simpleAction role="set" value="$value"/>
            </causalConnector>


 <causalConnector id="onSelectionStop">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                  <simpleAction role="stop" max="unbounded" qualifier="par"/>
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onSelectionSet">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                   <simpleAction role="set" value="$value"/>
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onSelectionSetStart">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                   <simpleAction role="set" value="$value"/>
                    <simpleAction role="start" max="unbounded" qualifier="par"/>    
                </compoundAction>               
            </causalConnector>
               <causalConnector id="onSelectionSetStartStop">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                   <simpleAction role="set" value="$value"/>
                    <simpleAction role="start" max="unbounded" qualifier="par"/>  
                    <simpleAction role="stop" max="unbounded" qualifier="par"/>  
                </compoundAction>               
            </causalConnector>

            <causalConnector id="onEndSet">
                <connectorParam name="value"/>
                <simpleCondition role="onEnd"/>
                <simpleAction role="set" value="$value" max="unbounded" qualifier="par"/>
            </causalConnector>

             

            <causalConnector id="onStop">
                <simpleCondition role="onEnd"/>
                <simpleAction role="stop" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onSelectionIconMenuResizeVideo">
                <connectorParam name="varSet"/>
                <connectorParam name="keyCode"/>
                <simpleCondition role="onSelection" key="$keyCode"/>
                <compoundAction operator="seq">
                    <simpleAction role="stop" max="unbounded" qualifier="par"/>
                    <simpleAction role="set" value="$varSet"/>
                </compoundAction>
            </causalConnector>

            <causalConnector id="onSelectionMenuFiveResizeBackVideo">
                <connectorParam name="varSet"/>
                <connectorParam name="keyCode"/>
                <simpleCondition role="onSelection" key="$keyCode"/>
                <compoundAction operator="seq">
                    <simpleAction role="stop" max="unbounded" qualifier="par"/>
                    <simpleAction role="start" max="unbounded" qualifier="par"/>
                    <simpleAction role="set" value="$varSet"/>
                </compoundAction>
            </causalConnector>

            <causalConnector id="onSelectionIconMenuSetAnim">
                <connectorParam name="keyCode" />
                <connectorParam name="vBy" />
                <connectorParam name="vDuration" />
                <connectorParam name="newValue"/>
                <simpleCondition role="onSelection" key="$keyCode"/>
                <simpleAction role="set" value="$newValue" duration="$vDuration" by="$vBy" />
            </causalConnector>

            <causalConnector id="onBeginIconMenuSetAnim">
                <connectorParam name="vBy" />
                <connectorParam name="vDuration" />
                <connectorParam name="newValue"/>
                <simpleCondition role="onBegin"/>
                <simpleAction role="set" value="$newValue" duration="$vDuration" by="$vBy" />
            </causalConnector>

            <causalConnector id="onEndIconMenuSetAnim">
                <connectorParam name="vBy" />
                <connectorParam name="vDuration" />
                <connectorParam name="newValue"/>
                <simpleCondition role="onEnd"/>
                <simpleAction role="set" value="$newValue" duration="$vDuration" by="$vBy" />
            </causalConnector>

            <causalConnector id="onKeySelectionStartNStopN">
                <simpleCondition role="onSelection"/>
                <compoundAction operator="seq">
                    <simpleAction role="start" max="unbounded" qualifier="seq"/>
                    <simpleAction role="stop" max="unbounded" qualifier="seq"/>
                </compoundAction>
            </causalConnector>

            <causalConnector id="onKeySelectionStop">
                <connectorParam name="keyCode"/>
                <simpleCondition role="onSelection" key="$keyCode"/>
                <compoundAction operator="seq">
                    <simpleAction role="stop" max="unbounded" qualifier="par"/>
                </compoundAction>
            </causalConnector>
               <causalConnector id="onKeySelectionStopStart">
                <connectorParam name="keyCode"/>
                <simpleCondition role="onSelection" key="$keyCode"/>
                <compoundAction operator="seq">
                    <simpleAction role="stop" max="unbounded" qualifier="seq"/>
                    <simpleAction role="start" max="unbounded" qualifier="seq"/>
                </compoundAction>
            </causalConnector>

        </connectorBase>

    </head>
</ncl>
