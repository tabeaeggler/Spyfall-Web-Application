package webec

import grails.testing.gorm.DomainUnitTest
import grails.testing.web.controllers.ControllerUnitTest
import grails.validation.ValidationException
import spock.lang.*

/**
 * Test the Player Controller
 */
class PlayerControllerSpec extends Specification implements ControllerUnitTest<PlayerController>, DomainUnitTest<Player> {

    Player player1
    Player player2
    Player player3

    def setup() {
        player1 = new Player(playerName: "Tabea")
        player2 = new Player(playerName: "Max")
        player3 = new Player(playerName: "Fritz")
    }

    void "Test the save, update, and delete function"() {
        when: "The save action is executed"
        player1.save();
        player2.save();
        player3.save();

        then: "The save action creates a new player object and adds it to the list"
        Player.list().size() == 3
        player1.playerName == "Tabea"
        player2.playerName == "Max"
        player3.playerName == "Fritz"


        when: "The name gets updated for player 3"
        player3.playerName="Sandra"
        player3.save()

        then: "New defined name is saved"
        player3.playerName == "Sandra"


        when: "The delete action is executed for player 2"
        player2.delete();

        then: "Player 2 is removed from list"
        Player.list().size() == 2
    }

    void "Test addPlayer and remove it"() {
        when: "The add action is executed"
        controller.addPlayer()

        then: "The add action creates a new player object and adds it to the list"
        Player.list().size() == 1


        when: "The remove action is executed"
        Player.findById(1).delete()

        then: "The remove action deletes the player"
        Player.list().size() == 0
    }


}






