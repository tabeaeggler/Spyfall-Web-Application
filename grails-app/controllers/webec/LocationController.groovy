package webec
/**
 * This class contains the CRUD methods for the location
 */
class LocationController {

    //display locations
    def locations() {
        def locations = Location.list()
        [locations:locations]
    }

    //add new location
    def addLocation() {
        def location = new Location(locationName: "add location...")
        location.save()
            redirect(uri:'/locations')
    }

    //delete existing location by ID
    def deleteLocation() {
        //render is needed for validation
        render (view: '/spyfall/locations')
        def location = Location.get(params.id)

        //check that at least 2 locations must be added
        if(locations().locations.size() > 2){
        location.delete(flush: true)
            redirect(uri:'/locations')
        }
    }

    //update text of locationName
    def updateLocation () {
        def location = Location.get(params.id)
        location.locationName = params.text
        location.save(flush: true, failOnError: false)
            redirect(uri:'/locations')
    }
}
