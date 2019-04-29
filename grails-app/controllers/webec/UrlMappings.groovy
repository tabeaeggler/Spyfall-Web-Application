package webec

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(view: "/spyfall/game")
        "/game" (view: "/spyfall/game")
        "/players" (view:"/spyfall/players")
        "/locations" (view:"/spyfall/locations")
        "/gamestarted" (view: "/spyfall/gamestarted")
        "/about" (view:"/spyfall/about")

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
