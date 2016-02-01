<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="Dango_Balango" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>

        <connectorBase>
            <causalConnector id="onBeginStart">
                <simpleCondition role="onBegin"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onEndVideoBeginLoop">
                <simpleCondition role="onEnd"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
            </causalConnector>

            <causalConnector id="onEndIconMenu">
                <simpleCondition role="onEnd"/>
                <simpleAction role="start" max="unbounded" qualifier="par"/>
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

            <causalConnector id="onEndSet">
                <connectorParam name="value"/>
                <simpleCondition role="onEnd"/>
                <simpleAction role="set" value="$value"/>
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

        </connectorBase>

    </head>
</ncl>
