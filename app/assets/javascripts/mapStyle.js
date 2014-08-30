/*
Map Settings

Find the Latitude and Longitude of your address:
- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

*/

// Map Markers
var mapMarkers = [{
    address: "Almafuerte 878, Acassuso, Buenos Aires, Argentina",
    html: "<strong>InfoPrisma</strong><br>San Isidro",
    icon: {
    image: "/assets/pin-logo.png",
    iconsize: [154, 65],
    iconanchor: [77, 65]
    }
}];

// Map Initial Location
var initLatitude = -34.4745197;
var initLongitude = -58.500306;

// Map Extended Settings
var mapSettings = {
    controls: {
    panControl: true,
    zoomControl: true,
    mapTypeControl: true,
    scaleControl: true,
    streetViewControl: true,
    overviewMapControl: true
    },
scrollwheel: false,
markers: mapMarkers,
latitude: initLatitude,
longitude: initLongitude,
zoom: 17
};

var map = $("#googlemaps").gMap(mapSettings),
mapRef = $("#googlemaps").data('gMap.reference');

// Map Center At
var mapCenterAt = function(options, e) {
    e.preventDefault();
    $("#googlemaps").gMap("centerAt", options);
    }

// Create an array of styles.
var mapColor = "#E36159";

var styles = [{
    stylers: [{
    hue: mapColor
    }]
}, {
    featureType: "road",
    elementType: "geometry",
    stylers: [{
    lightness: 0
    }, {
    visibility: "simplified"
    }]
}, {
    featureType: "road",
    elementType: "labels",
    stylers: [{
    visibility: "off"
    }]
}];

var styledMap = new google.maps.StyledMapType(styles, {
    name: "Styled Map"
    });

mapRef.mapTypes.set('map_style', styledMap);
mapRef.setMapTypeId('map_style');

