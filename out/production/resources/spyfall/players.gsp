<html>
<head>
    <meta name="layout" content="main"/>
    <title>Players</title>
</head>

<body>
    <div class="form-container">
        <g:each in="${webec.Player.list()}" var="player" status="i">
            <i class="fa fa-user"></i>Player ${i + 1}:
            <div id="form-block1">
                <g:form controller="player" action="updatePlayer" playerName="${player.playerName}" id="${player.id}">
                    <g:textField name="text"
                                 id="${player.id}"
                                 value="${player.playerName}"
                                 maxlength="15"
                                 class="textbox"
                                 onfocus="if(this.value=='add name...') this.value='' ;"
                                 onblur="if(this.value=='') this.value='add name...'"
                                 onchange="if(${player.playerName.size() >= 15}) return confirm('Your Name might be a bit long. Max. characters: 15!');"/>
                    <g:link action="updatePlayer" id="${player.id}" playerName="${player.playerName}">
                        <button class="form-button line-button"
                                type="submit"
                                >Update</button>
                    </g:link>
                </g:form>
            </div>
            <div id="form-block2">
                <g:link controller="player" action="deletePlayer" id="${player.id}">
                    <button class="form-button line-button"
                            onclick="if(${webec.Player.count() <= 3}) return confirm('You must add ad least 3 Players');"
                    >Delete</button>
                </g:link>
            </div>
            <br>
        </g:each>
        <g:link controller="player" action="addPlayer">
            <button class="form-button" id="button-add-player"><i class="fa fa-plus"></i>Add Player</button>
        </g:link>
        <br>
    </div>
</body>
</html>