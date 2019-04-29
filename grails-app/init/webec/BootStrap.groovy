package webec

class BootStrap {

    def init = { servletContext ->
        // add initial players
        new Player(playerName: 'add name...').save()
        new Player(playerName: 'add name...').save()
        new Player(playerName: 'add name...').save()

        //add initial locations
        new Location(locationName: 'Spa').save()
        new Location(locationName: 'University').save()
        new Location(locationName: 'Nightclub').save()
        new Location(locationName: 'Spaceship').save()
        new Location(locationName: 'Cruise ship').save()
        new Location(locationName: 'Zoo').save()
        new Location(locationName: 'Surfcamp').save()
    }
    def destroy = {
    }
}
