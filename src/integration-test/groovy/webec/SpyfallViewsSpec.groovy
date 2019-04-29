package webec


import geb.spock.*
import grails.testing.mixin.integration.Integration

/**
 * Test Class for the url navigations in the header
 */

@Integration
class SpyfallViewsSpec extends GebSpec {

    void "Test the index view is displayed when the app starts"() {
        when:"App starts"
        go '/'
        then:"Compare the title"
        title == "Spyfall"
    }

    void "Test that after clicking on start game the new page is shown"() {
        when:"User clicks on start game"
        go '/game/gamestarted'
        then:"Compare the title"
        title == "Spyfall Game Started"
    }

    void "Test the player view is displayed when clicked on Players in the header"() {
        when:"User clicks on Players field"
        go '/players'
        then:"Compare the title"
        title == "Players"
    }

    void "Test the location view is displayed when clicked on Locations in the header"() {
        when:"User clicks on Locations field"
        go '/locations'
        then:"Compare the title"
        title == "Locations"
    }

    void "Test the game view is displayed when clicked on Game in the header"() {
        when:"User clicks on Game field"
        go '/game'
        then:"Compare the title"
        title == "Spyfall"
    }
}
