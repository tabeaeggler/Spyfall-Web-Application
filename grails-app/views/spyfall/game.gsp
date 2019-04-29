<!DOCTYPE html>
<head>
    <meta name="layout" content="main"/>
    <title>Spyfall</title>
</head>

<body>
    <div class="form-container">
        <div class="player-container">
            <h1>Game Instructions</h1>
            <p>Spyfall is a game for 3+ players. Each round, players are given a secret location.
            One player is not given the location (the "Spy"). Play starts with one player asking another player a question.
            At any point in time, any player may announce who they think is the Spy. If the other players agree,
            the round stops and the identified player must reveal themselves. If they are the Spy, all non-Spy players gain a point.
            Also at any point in time, the Spy may choose to guess the secret location. If they are correct, the Spy gains one point.
            Regardless, the round ends.</p>
        </div>

        <div class="player-container">
            <div id="setup-container">
                <h1>Setup</h1>
                <p>Make sure that you have added all players and updated the locations.</p>
            </div>

            <div class="setup-box">
                <a href="/players" class="button-game">Edit Players</a>
                <p><i class="fa fa-user"></i>Current players:</p>
                <g:each in="${webec.Player.list()}" var="player" status="i">
                    <h6>${player.playerName}</h6>
                </g:each>
            </div>

            <div class="setup-box">
                <a href="/locations" class="button-game">Edit Locations</a>
                <p><i class="fa fa-map-marker"></i>Current locations:</p>
                <g:each in="${webec.Location.list()}" var="location" status="i">
                    <h6>${location.locationName}</h6>
                </g:each>
            </div>
        </div>

        <div class="player-container">
            <h1>Let's play</h1>
            <p>After the preparation you are ready to start the game.</p>
            <g:link action="gamestarted" controller="game">
                <button class="button-start">Start Game</button>
            </g:link>
        </div>
    </div>
</body>
</html>