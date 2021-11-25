/*
 * Google Map with multiple markers
 */
var initializeMap = function(id) {
  var i, infowindow, locations, map, mapOptions, marker, _results, image;

  /* Settings */
  // Custom image marker
  image = "path-to-theme-folder/assets/images/icons/map_icon.png"

  // Map Options
  mapOptions = {
    zoom: 10,
    center: new google.maps.LatLng(-33.92, 151.25),
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    scrollwheel: false
  };

  // Markers
  locations = [
    [
      "<h5>Marker 1</h5> Your address<br/> Your town", // Popup text
      -33.890542, // Coordinates
      151.274856, 
      100 // Z-index position of the marker
    ], 
    [
      "<h5>Marker 2</h5> Your address<br/> Your town", 
      -33.923036, 
      151.259052, 
      100
    ], 
    [
      "<h5>Marker 3</h5> Your address<br/> Your town", 
      -34.028249, 
      151.157507, 
      100
    ]
  ];
  /* End Settings */
  
  // Initialize the map with options (inside #map element)
  map = new google.maps.Map(document.getElementById(id), mapOptions);

  // Initialize the pop up
  infowindow = new google.maps.InfoWindow();

  // Popup function
  var popup = function(marker, i) {
    return function() {
      infowindow.setContent(locations[i][0]);
      infowindow.open(map, marker);
    };
  };
  // Add a marker and a popup for each locations
  marker = void 0;
  i = 0;
  _results = [];
  while (i < locations.length) {
    // Marker
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(locations[i][1], locations[i][2]),
      zIndex: locations[i][3],
      map: map,
      icon: image
    });
    // Pop Up
    google.maps.event.addListener(marker, "click", (popup)(marker, i));
    _results.push(i++);
  }
  return _results;
};

// Display the map into the element ID (if it exists) passed to the initializeMap function (in this case into element #map)
if ($("#map").length) {
  google.maps.event.addDomListener(window, "load", initializeMap("map"));
}

// You can also show the map into another element
// google.maps.event.addDomListener window, "load", initializeMap("map-2")