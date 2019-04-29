package webec
/**
 * This class contains the CRUD methods for the player
 */
class PlayerController {

    //display players
    def home() {
        def players = Player.list()
        [players:players]
    }

    //add new player
    def addPlayer() {
        def player = new Player(playerName: "add name...")
        player.save()
        redirect(uri:'/players')
    }

    //delete existing player by ID
    def deletePlayer() {
        //render is needed for validation
        render (view: '/spyfall/players')
        def player = Player.get(params.id)

        //check that at least 3 players must be in list
        if(home().players.size() > 3){
        player.delete(flush: true)
            redirect(uri:'/players')
        }
    }

    //update text of playername
    def updatePlayer() {
        def player = Player.get(params.id)
        player.playerName = params.text
        player.save(flush: true, failOnError: true)
            redirect(uri:'/players')
    }
}
