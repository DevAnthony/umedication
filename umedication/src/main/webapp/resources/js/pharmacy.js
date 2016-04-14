/**
 * 
 */
var map;
var markers = [];//The array where to store the markers

var service;
var infowindow;

function initialize() {
  var pyrmont = new google.maps.LatLng(-33.8665433,151.1956316);
  map = new google.maps.Map(document.getElementById('map'), {
      center: pyrmont,
      zoom: 15
    });

  infowindow = new google.maps.InfoWindow();
  
  var request = {
    location: pyrmont,
    radius: '500',
    types: ['pharmacy']
  };

  service = new google.maps.places.PlacesService(map);
  service.nearbySearch(request, callback);

}

function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
		$("#list_pharmacy").empty();
    for (var i = 0; i < results.length; i++) {
      var place = results[i];
      createMarker(place,i);
      updateList(place, i);
    }
  }
}
function createMarker(place,i) {
	  var placeLoc = place.geometry.location;
	  var marker = new google.maps.Marker({
	    map: map,
	    position: place.geometry.location
	  });

      // Push the marker to the 'markers' array
      markers[i]=marker;
	  google.maps.event.addListener(marker, 'click', function() {
	    infowindow.setContent(place.name);
	    infowindow.open(map, this);
	  });
	}
function updateList(place, i){
	console.log(place);
	var li=$("<li id='"+place.place_id+"' onclick='myClick("+i+");'>");
	li.append("<img src=\"http://lorempixum.com/100/100/nature/"+i+"\" onerror=\"this.src=\""+place.icon+"\" />");
	li.append("<h3>"+place.name+"</h3><p>"+place.vicinity+"</p><br/>");
	$("#list_pharmacy").append(li);
}

$(function() {
	initialize();
	var initialLocation;
	if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(function (position) {
	        initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
	        console.log(initialLocation);
	        map.setCenter(initialLocation);
	        
		    var request = {
		    	    location: initialLocation,
		    	    radius: '500',
		    	    types: ['health']
		    	  };

		    service = new google.maps.places.PlacesService(map);
		    service.nearbySearch(request, callback);
	    });
	}
});
// The function to trigger the marker click, 'id' is the reference index to the 'markers' array.
function myClick(id){
    google.maps.event.trigger(markers[id], 'click');
}
