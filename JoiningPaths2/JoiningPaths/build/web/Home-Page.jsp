<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCs4yPI1kZQL1DGnrNG1HW-IbncZoMZfXs&callback=initMap"></script>  
    <script src="https://kit.fontawesome.com/39ab984e61.js" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style_main.css">
        <link rel="icon" href="images/logononame.jpg" type="image/x-icon"/>
    <title>Home Page</title>
  </head>
  <body onload="initMap()">
    <%@ include file="Template.html" %>
    <h2 class ="center-title" > START YOUR HIKE </h2>
    <form id="route-form">
      <div class="input-container">
        <div class="ICON1">
          <i class="fa-solid fa-bullseye fa-xl"></i>
        </div>
        <div class="text">
          <label for="start"><b>Starting Location</b></label>
          <select id="start" name="start" style:font-size:10px >
            <option value="44.4268,26.1025">Bucharest</option>
            <option value="46.7712,23.6236">Cluj-Napoca</option>
            <option value="45.7489,21.2087">Timisoara</option>
          </select>
        </div>
      </div>
      <div class="input-container">
        <div class="ICON2">
          <i class="fa-solid fa-bullseye fa-xl"></i>
        </div>
        <div class="text">
          <label for="end"><b>Destination</b></label>
          <select id="end" name="end">
            <option value="44.4268,26.1025">Bucharest</option>
            <option value="46.7712,23.6236">Cluj-Napoca</option>
            <option value="45.7489,21.2087">Timisoara</option>
          </select>
        </div>
      </div>
      <br>
      <h1> <input class="interactables" type="submit" name="serviciu" value="GO! GO! GO!" id="submit-button"> </h1>
    </form>
    
     <div id="map"></div>
<form method="post" action="app.do">
  <input type="hidden" name="serviciu" value="Details">
  <input type="hidden" name="start" id="start-input">
  <input type="hidden" name="end" id="end-input">
  <button id="route-details-button" type="submit" style="display:none; color:white">Route Details</button>
</form>
    
     <script>
      function initMap() {
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer;
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 7,
          center: {lat: 45.9432, lng: 24.9668}
        });
        directionsDisplay.setMap(map);

        var onChangeHandler = function() {
          calculateAndDisplayRoute(directionsService, directionsDisplay);
        };
        document.getElementById("route-form").addEventListener('submit', function(event) {
         event.preventDefault();
         calculateAndDisplayRoute(directionsService, directionsDisplay);
});
      }

      function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    var start = document.getElementById('start').value;
    var end = document.getElementById('end').value;
    directionsService.route({
      origin: start,
      destination: end,
      travelMode: 'WALKING'
    }, function(response, status) {
      if (status === 'OK') {
        directionsDisplay.setDirections(response);
        document.getElementById('route-details-button').style.display = 'block';
        document.getElementById('start-input').value = start;
        document.getElementById('end-input').value = end;
      } else {
        window.alert('Directions request failed due to ' + status);
      }
    });
  }
    </script>
  </body>
</html>
