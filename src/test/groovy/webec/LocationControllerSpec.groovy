package webec

import grails.testing.gorm.DomainUnitTest
import grails.testing.web.controllers.ControllerUnitTest
import grails.validation.ValidationException
import spock.lang.*

/**
 * Test the Location Controller
 */
class LocationControllerSpec extends Specification implements ControllerUnitTest<LocationController>, DomainUnitTest<Location> {
    Location location1
    Location location2

    def setup() {
        location1 = new Location(locationName: "Spa")
        location2 = new Location(locationName: "School")
    }

    void "Test the save, update, and delete function"() {
        when: "The save action is executed"
        location1.save();
        location2.save();

        then: "The save action creates a new location object and adds it to the list"
        Location.list().size() == 2
        location1.locationName == "Spa"
        location2.locationName == "School"


        when: "The name gets updated for location 2"
        location2.locationName="University"
        location2.save()

        then: "New defined location is saved"
        location2.locationName == "University"


        when: "The delete action is executed for location 1"
        location1.delete()

        then: "location 1 is removed from list"
        Location.list().size() == 1
    }

    void "Test addLocation and remove it"() {
        when: "The add action is executed"
        controller.addLocation()

        then: "The add action creates a new location object and adds it to the list"
        Location.list().size() == 1


        when: "The remove action is executed"
        Location.findById(1).delete()

        then: "The remove action deletes the player"
        Location.list().size() == 0
    }

}






