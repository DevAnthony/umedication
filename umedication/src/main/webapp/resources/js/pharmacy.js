/**
 * 
 */
var map;
var markers = [];//The array where to store the markers

var service;
var infowindow;
var image_number=0;
var issyLesMoulineaux = new google.maps.LatLng(48.8167,48.8167);
var initialLocation;
var initialPosition = {
	latitude:48.8167,
	longitude:48.8167
}

/**
 * name : initialize
 * arguments : id
 * description : Initialisation de la google map
 */
function initialize(initialLocation) {
	map = new google.maps.Map(document.getElementById('map'), {
		center: initialLocation,
		zoom: 15
    });
	
	infowindow = new google.maps.InfoWindow();
	
	var request = {
		location: initialLocation,
		radius: '500',
		keyword: ['pharmacy','pharmacie'],
		types: ['pharmacy','store','health']
	};

  service = new google.maps.places.PlacesService(map);
  service.nearbySearch(request, nearbySearchCallback);

}

/**
 * name : myClick
 * arguments : id
 * description : The function to trigger the marker click, 'id' is the reference index to the 'markers' array.
 */
function myClick(id){
	google.maps.event.trigger(markers[id], 'click');
}

/**
 * @name nearbySearchCallback
 * @param results : resultats du neabySearch,
 * @param status code de retour envoyé par le nearbySearch
 * @description fonction appelée lors du nearbySearch
 */
function nearbySearchCallback(results, status) {
	if (status == google.maps.places.PlacesServiceStatus.OK && results.length>0) {//Si le statut du résultat est ok
		deleteMarkers();//On supprime tous les markers
		console.log("markers deleted")
	    for (var i = 0; i < results.length; i++) {
	    	var place = results[i];
	    	createMarker(place, i);
	    	insertInList(place, i);
		}
	}
	else{ console.log(status); console.log(results.length); }
}
/**
 * createMarker
 * @param place : endroit représenté par le marker
 * @param i : position du marker dans la liste 'markers'
 * @description crée un marker, l'ajoute sur le map et à la liste des makers 
 */
function createMarker(place,i) {
	//console.table(place);
	var placeLoc = place.geometry.location;
	var marker = new google.maps.Marker({
	    map: map,
	    position: place.geometry.location,
	    //icon: place.icon
	});

  // On ajoute le maker à la liste 'markers'
	markers[i]=marker;
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.setContent(place.name);
		infowindow.open(map, this);
	});
}
/**
 * 
 * @param place
 * @param i
 */
function insertInList(place, i){
	//console.table(place);
	var image_url;
	var li=$("<li>").attr({
		"id": place.place_id, 
		"onclick": 'myClick("'+i+'");'
	});
	var paragraphe=$("<p>");
	if (placeHasImages(place)){
		image_url = place.photos[0].getUrl({maxWidth:1000,maxHeight:1000});
		$image = $("<img>").attr("src",image_url);
		li.append($image);
	}
	else{
		$image = $("<img>").attr("src","http://lorempixum.com/100/100/nature/"+image_number);
		li.append($image);
		image_number++;
	}
	li.append("<h3>"+place.name+"</h3>");
	paragraphe.append(place.vicinity);
	if (undefined != place.international_phone_number){
		paragraphe.append("<br/>"+place.international_phone_number);
	}
	if (undefined != place.website){
		li.append("<br/><a href=\""+place.website+"\" target=\"_blank\">Site internet</a>");
	}
	li.append(paragraphe);
	$("#list_pharmacy").append(li);
	getDirections(place);
}
function placeHasImages(place){
	if (undefined != place.photos){
		var image_url = place.photos[0].getUrl({maxWidth:1000,maxHeight:1000});
		if (undefined != image_url){
			return true;
		}
	}
	return false;
}

//Sets the map on all markers in the array.
function setMapOnAll(map) {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map);
	}
}
// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
	setMapOnAll(null);
	markers = [];
	$("#list_pharmacy").empty();
	image_number = 0;
}
function getDirections(place){
	console.log(place);
	var distance="";
    var directionsService = new google.maps.DirectionsService();
    directionsRequest = createDirectionsRequest(place);
    directionsService.route(directionsRequest, function (response, status) {
        if (status == google.maps.DirectionsStatus.OK) {   
        	distance = response.routes[0].legs[0].distance.text;
        	console.log(distance);
        	$("#"+place.place_id+" p").append(" ( "+distance+" )");
        }
        else{
        	console.log(status)
        }
    })
}

function createDirectionsRequest(place){
    var directionsRequest = {
        origin:  initialPosition.latitude+","+initialPosition.longitude,
        destination:  place.geometry.location.lat()+","+place.geometry.location.lng(),
        travelMode: google.maps.DirectionsTravelMode.DRIVING,
        unitSystem: google.maps.UnitSystem.METRIC
    };
    return directionsRequest;
}

//Au chargement de la page
$(function() {
	//Si la géolocalisation est activée
	if (navigator.geolocation) {
		//On récupère la localisation de l'utilisateur
	    navigator.geolocation.getCurrentPosition(function (position) {
	        initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
	        initialPosition = {
	        		latitude:position.coords.latitude,
	        		longitude:position.coords.longitude
	        	}
	    	initialize(initialLocation);
	    });
	}
	else{
		initialize(issyLesMoulineaux);
	}
});
