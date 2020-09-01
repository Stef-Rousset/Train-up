import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',

      // mapbox://styles/mapbox/streets-v10
      // https://api.mapbox.com/styles/v1/chrysteledaunay/ckeiq02h028rv19ocj9hw2z77.html?fresh=true&title=view&access_token=pk.eyJ1IjoiY2hyeXN0ZWxlZGF1bmF5IiwiYSI6ImNrZTJrcjA5eTBhN3ozMW43MXI0bWo3YWYifQ.WVx62_h_XptK0-N08D5pvQ
      style: 'mapbox://styles/mapbox/streets-v11',
      // style: 'https://api.mapbox.com/styles/v1/chrysteledaunay/ckeiq02h028rv19ocj9hw2z77.html?fresh=true&title=view&access_token=pk.eyJ1IjoiY2hyeXN0ZWxlZGF1bmF5IiwiYSI6ImNrZTJrcjA5eTBhN3ozMW43MXI0bWo3YWYifQ.WVx62_h_XptK0-N08D5pvQ',
      center: [2.213749, 46.227638], // Starting position [lng, lat]
      zoom: 12// Starting zoom level!
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      // mapboxgl: mapboxgl }));
    // map.update();
  }
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

export { initMapbox };

