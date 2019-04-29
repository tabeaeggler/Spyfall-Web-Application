<!DOCTYPE html>
<head>
    <meta name="layout" content="main"/>
    <title>Spyfall Game Started</title>
</head>

<body>
<div class="form-container">
    <h1>Get to know your role</h1>
    <p>Before you start, players have to know either the location or the spy. Unlock your location and afterwards give it to the next player.
    Make sure that you click outside the button to lock your location again.</p>
    <br>

    <p>Possible Location:</p>
    <g:each in="${locationList}" var="location" status="i">
        <h6>Location ${i + 1}: ${location.locationName}</h6>
    </g:each>
    <br>
    <g:each in="${playerList}" var="player" status="i">
        <div class="player-role">
            <h3>Player ${i + 1}: ${player.playerName}</h3>
            <g:set var="loc" value="${randomList.get(1)}"></g:set>
            <g:set var="spy" value="${randomList.get(0)}"></g:set>
            <g:field name="text"
                     id="${player.id}"
                     value="unlock location"
                     class="button-normal"
                     readonly="readonly"
                     onfocus="(${i} == ${randomList.get(0)})? this.value='spy' : this.value = 'Location: ' + ${randomList.get(1) + 1} ;"
                     onblur="this.value='unlock location'">
            </g:field>
        </div>
    </g:each>
    <br>
    <a href="/game" class="button-end">End Game</a>
</div>
</body>
</html>