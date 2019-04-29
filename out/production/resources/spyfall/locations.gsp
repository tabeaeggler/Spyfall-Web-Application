<html>
<head>
    <meta name="layout" content="main"/>
    <title>Locations</title>
</head>

<body>
    <div class="form-container">
        <g:each in="${webec.Location.list()}" var="location" status="i">
            <i class="fa fa-map-marker"></i>Location ${i + 1}:
            <div id="form-block1">
                <g:form controller="location" action="updateLocation" locationName="${location.locationName}" id="${location.id}">
                    <g:textField name="text"
                                 id="${location.id}"
                                 value="${location.locationName}"
                                 maxlength="20"
                                 class="textbox" onfocus="if(this.value=='add location...') this.value=''"
                                 onblur="if(this.value=='') this.value='add location...'"
                                 onchange="if(${location.locationName.size() >= 20}) return confirm('The Location Name might be a bit long. Max. characters: 20!');"/>
                    <g:link action="updateLocation" id="${location.id}" locationName="${location.locationName}">
                        <button class="form-button line-button" type="submit">Update</button>
                    </g:link>
                </g:form>
            </div>
            <div id="form-block2">
                <g:link controller="location" action="deleteLocation" id="${location.id}">
                    <button class="form-button line-button"
                            onclick="if(${webec.Location.count() <= 2}) return confirm('You must add ad least 2 Locations ');"
                    >Delete</button>
                </g:link>

            </div>
            <br>
        </g:each>
        <g:link controller="location" action="addLocation">
            <button class="form-button"id="button-add-location"><i class="fa fa-plus"></i>Add Location</button>
        </g:link>
    </div>
</body>
</html>