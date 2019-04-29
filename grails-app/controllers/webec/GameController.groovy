package webec
/**
 * This class generates the game by setting one spy and one location
 */
class GameController {

    def index() { }

    def gamestarted() {
        Random random = new Random()
        //set spy: get one random nr from players
        def randomSpyNr = random.nextInt(Player.list().size());

        //set locations: get one random nr from locations
        def randomLocationNr = random.nextInt(Location.list().size());

        //create array with spynr and locationNr.
        def randomArray = [randomSpyNr, randomLocationNr]

        //send array to frontend
        render (view: "/spyfall/gamestarted", model: [playerList: Player.list(), locationList: Location.list(), randomList: [randomSpyNr, randomLocationNr]])

        /*print random nr. for testing
        println("random location" + randomLocationNr);
        println("random spy" + randomSpyNr)
        println(randomArray)
        */
    }
}
