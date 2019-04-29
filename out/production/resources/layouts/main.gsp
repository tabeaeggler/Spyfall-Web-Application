<!doctype html>
<html lang="en" class="no-js">
<head>
    <title><g:layoutTitle default="Grails"/></title>
    <g:layoutHead/>

    <%/*Comtability, Phone*/%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <%/*Import CSS*/%>
    <asset:stylesheet href="homePage/layout.css"/>
    <asset:stylesheet href="homePage/game.css"/>
    <asset:stylesheet src="application.css"/>

    <%/*Import font awesome icons*/%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div class="main-container">
        <div class="top-nav">
            <div class="logo-container">
                <g:img dir="images" file="detective.png" id="logo"/>
                <p>Spyfall</p>
            </div>
            <div class="nav-links">
                <a href="/locations">Locations</a>
                <a href="/game">Game</a>
                <a href="/players">Players</a>
            </div>
        </div>
        <g:layoutBody/>
        <div class="footer" role="contentinfo"></div>
        <%/*Adding JavaScript*/%>
        <asset:javascript src="application.js"/>
        <asset:javascript src="//cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"/>
    </div>
</body>
</html>
