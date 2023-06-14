// import axios from 'axios';
// console.log(axios.isCancel('something'));

//https://leaflet-extras.github.io/leaflet-providers/preview/

const osmLink = '<a href="http://openstreetmap.org">OpenStreetMap</a>';
const cartoDB = '<a href="http://cartodb.com/attributions">CartoDB</a>';
// const stamenToner = <a href="http://maps.stamen.com">StamenToner</a>

const osmUrl = "http://tile.openstreetmap.org/{z}/{x}/{y}.png";
const osmAttrib = `&copy; ${osmLink} Contributors`;

const landUrl = "https://{s}.basemaps.cartocdn.com/rastertiles/dark_all/{z}/{x}/{y}.png";
const cartoAttrib = `&copy; ${osmLink} Contributors & ${cartoDB}`;

const stamenUrl = 'https://stamen-tiles-{s}.a.ssl.fastly.net/toner/{z}/{x}/{y}.{ext}';
const stamenAttrib = 'Map data &copy; <a href="https://stamen.com">Stamen</a> contributors';

const osmMap = L.tileLayer(osmUrl, { attribution: osmAttrib });
const landMap = L.tileLayer(landUrl, { attribution: cartoAttrib });

const stamenMap = L.tileLayer(stamenUrl, {
  attribution: stamenAttrib,
  subdomains: 'abcd',
  minZoom: 0,
  maxZoom: 20,
  ext: 'png',
});

// config map
let config = {
  // See siin määrab ära default mapi
  layers: [osmMap],
  minZoom: 5,
  maxZoom: 18,
};



// magnification with which the map will start
const zoom = 8;
// coordinates
const lat = 58.636856;
const lng = 25.334473;

// sidebar

const menuItems = document.querySelectorAll(".menu-item");
const sidebar = document.querySelector(".sidebar");
const buttonClose = document.querySelector(".close-button");

menuItems.forEach((item) => {
  item.addEventListener("click", (e) => {
    const target = e.target;

    if (
        target.classList.contains("active-item") ||
        !document.querySelector(".active-sidebar")
    ) {
      document.body.classList.toggle("active-sidebar");
    }

    // show content
    showContent(target.dataset.item);
    // add active class to menu item
    addRemoveActiveItem(target, "active-item");
  });
});

// close sidebar when click on close button
buttonClose.addEventListener("click", () => {
  closeSidebar();
});

// remove active class from menu item and content
function addRemoveActiveItem(target, className) {
  const element = document.querySelector(`.${className}`);
  target.classList.add(className);
  if (!element) return;
  element.classList.remove(className);
}

// show specific content
function showContent(dataContent) {
  const idItem = document.querySelector(`#${dataContent}`);
  addRemoveActiveItem(idItem, "active-content");
}

// --------------------------------------------------
// close when click esc
document.addEventListener("keydown", function (event) {
  if (event.key === "Escape") {
    closeSidebar();
  }
});

// close sidebar when click outside
document.addEventListener("click", (e) => {
  if (!e.target.closest(".sidebar")) {
    closeSidebar();
  }
});

// --------------------------------------------------
// close sidebar

function closeSidebar() {
  document.body.classList.remove("active-sidebar");
  const element = document.querySelector(".active-item");
  const activeContent = document.querySelector(".active-content");
  if (!element) return;
  element.classList.remove("active-item");
  activeContent.classList.remove("active-content");
}

// calling map
const map = L.map("map", config).setView([lat, lng], zoom);

// osm layer
osmMap.addTo(map);

// L.MarkerClusterGroup extends L.FeatureGroup
// by clustering the markers contained within
let markers = L.markerClusterGroup({
  spiderfyOnMaxZoom: true, // Disable spiderfying behavior
  showCoverageOnHover: false, // Disable cluster spiderfier polygon
});

// Create a custom divIcon with a small circle
function createCustomDivIcon() {
  return L.divIcon({
    className: 'custom-div-icon',
    html: '<div class="circle-icon"></div>',
    iconSize: [12, 12],
  });
}

// Fetch marker data from the backend API
// Define a function to fetch and create markers
function loadMarkers() {
  fetch('http://localhost:8080/api/v1/marker/getMarkers')
      .then(response => response.json())
      .then(markerData => {
        // Iterate over the marker data and create markers
        markerData.forEach(data => {
          const { latitude, longitude, title, body } = data;

          // Create a marker with the custom divIcon
          const marker = L.marker(new L.LatLng(latitude, longitude), {
            icon: createCustomDivIcon(), // Use your custom icon here
          });

          // Create the popup content
          const popupContent = document.createElement('div');

          // Create the title element
          const titleElement = document.createElement('h3');
          titleElement.textContent = title;
          popupContent.appendChild(titleElement);

          // Create the body element
          const bodyElement = document.createElement('div');
          bodyElement.innerHTML = body;
          popupContent.appendChild(bodyElement);

          // Bind the popup to the marker and set the content
          marker.bindPopup(popupContent);

          // Add a click event listener to zoom the map
          marker.on("click", clickZoom);

          // Add the marker to the marker cluster group
          markers.addLayer(marker);
        });
      })
      .catch(error => {
        console.error('Error fetching marker data:', error);
      });
}



// Call the loadMarkers function when the page loads
window.addEventListener('load', loadMarkers);



// Add all markers to map
map.addLayer(markers);

let baseLayers = {
  "Klassika": osmMap,
  "Dark mode": landMap,
  "Stamen Toner": stamenMap,
};

L.control.layers(baseLayers).addTo(map);

// Scale: imperial (miles) is set to false, only the metric scale is implemented
L.control.scale({imperial: false, maxWidth: 100}).addTo(map);

function setStyles(selectedLayer) {
  let sidebar = document.querySelector(".sidebar");
  let sidebartext = document.querySelector(".sidebar-content");
  let sidebarelements = document.querySelector(".sidebar svg");

  if (selectedLayer === "Klassika") {
    sidebar.style.background = "#fff"; // Light color
    sidebartext.style.color = "black";
    sidebarelements.style.fill ="#3f3f3f";
    document.getElementById("dynamic-styles").textContent = ".sidebar::before { background: #64a1e8; }";
    sidebar.classList.add("klassika");
    sidebar.classList.remove("dark-mode");
  } else if (selectedLayer === "Dark mode") {
    sidebar.style.background = "#333"; // Dark color
    sidebartext.style.color = "#ccc";
    sidebarelements.style.fill ="#ccc";
    document.getElementById("dynamic-styles").textContent = ".sidebar::before { background: #163c48; }";
    sidebar.classList.add("dark-mode");
    sidebar.classList.remove("klassika");
  }
}

map.on("baselayerchange", function(event) {
  let selectedLayer = event.name;
  setStyles(selectedLayer);
});

// Set initial styles when the page loads
document.addEventListener("DOMContentLoaded", function() {
  setStyles("Klassika");
});




// Searchbox
let searchbox = L.control.searchbox({
  position: 'topright',
  expand: 'left'
}).addTo(map);

// Close and clear searchbox 600ms after pressing ENTER in the search box
searchbox.onInput("keyup", function (e) {
  if (e.keyCode === 13) {
    setTimeout(function () {
      searchbox.hide();
      searchbox.clear();
    }, 600);
  }
});

// Close and clear searchbox 600ms after clicking the search button
searchbox.onButton("click", function () {
  setTimeout(function () {
    searchbox.hide();
    searchbox.clear();
  }, 600);
});

searchbox.onInput("keyup", function (e) {
  let value = searchbox.getValue();
  if (value !== "") {
    const searchUrl = `http://localhost:8080/api/v1/searchByName?name=${value}`;

    fetch(searchUrl)
        .then(response => response.json())
        .then(data => {
          const persons = data;

          // Clear the existing dropdown options
          searchbox.clearItems();

          // Add the persons as dropdown options
          persons.forEach(person => {
            if (person.varjunimi == null){
              searchbox.addItem(person.eesnimi + " " + person.perekonnanimi);
              // searchbox.addItem(person.perekonnanimi + " " + person.eesnimi);
            } else {
              searchbox.addItem(person.eesnimi + " " + person.perekonnanimi + " " + person.varjunimi);
            }

          });
        })
        .catch(error => {
          console.error(error);
        });
  } else {
    searchbox.clearItems();
  }
});


// center the map when popup is clicked
function clickZoom(e) {
  map.setView(e.target.getLatLng(), 15); //see siin os veits sus, vahest zoomib liiga sisse
  // pantTo version
  // map.panTo(e.target.getLatLng());
}

// back to home button

const htmlTemplate = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"><path d="M32 18.451L16 6.031 0 18.451v-5.064L16 .967l16 12.42zM28 18v12h-8v-8h-8v8H4V18l12-9z" /></svg>';
// const htmlTemplate = 'img/search_icon.png'

// create custom button
const customControl = L.Control.extend({
  // button position
  options: {
    position: "topleft",
  },

  // method
  onAdd: function (map) {
    console.log(map.getCenter());
    // create button
    const btn = L.DomUtil.create("button");
    btn.title = "tagasi algusesse";
    btn.innerHTML = htmlTemplate;
    btn.className += "leaflet-bar back-to-home hidden";

    return btn;
  },
});

// adding new button to map controll
map.addControl(new customControl());

// on drag end
map.on("moveend", getCenterOfMap);

const buttonBackToHome = document.querySelector(".back-to-home");

function getCenterOfMap() {
  buttonBackToHome.classList.remove("hidden");

  buttonBackToHome.addEventListener("click", () => {
    map.flyTo([lat, lng], zoom);
  });

  map.on("moveend", () => {
    const { lat: latCenter, lng: lngCenter } = map.getCenter();

    const latC = latCenter.toFixed(3) * 1;
    const lngC = lngCenter.toFixed(3) * 1;

    const defaultCoordinate = [+lat.toFixed(3), +lng.toFixed(3)];

    const centerCoordinate = [latC, lngC];

    if (compareToArrays(centerCoordinate, defaultCoordinate)) {
      buttonBackToHome.classList.add("hidden");
    }
  });
}

const compareToArrays = (a, b) => JSON.stringify(a) === JSON.stringify(b);



// MiniMap
const osm2 = new L.TileLayer(osmUrl, { minZoom: 0, maxZoom: 13});
const miniMap = new L.Control.MiniMap(osm2, { toggleDisplay: true }).addTo(map);