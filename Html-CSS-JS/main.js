console.log("Welcome to the Community Portal");

function pageLoaded() {
  alert("Page fully loaded!");
  loadEvents();
  restorePreference();
}

const events = [
  { name: "Music Fiesta", date: "2025-06-10", seats: 10, category: "Music" },
  { name: "Art Expo", date: "2025-06-05", seats: 0, category: "Art" },
  { name: "Baking Workshop", date: "2025-07-01", seats: 5, category: "Workshop" }
];

function loadEvents() {
  const container = document.getElementById("eventContainer");
  events.forEach(event => {
    if (new Date(event.date) > new Date() && event.seats > 0) {
      const card = document.createElement("div");
      card.className = "eventCard";
      card.innerHTML = `
        <h3>${event.name}</h3>
        <p>Date: ${event.date}</p>
        <p>Seats Left: ${event.seats}</p>
        <button onclick="register('${event.name}')">Register</button>
      `;
      container.appendChild(card);
    }
  });
}

function register(eventName) {
  try {
    alert(`You registered for ${eventName}`);
  } catch (e) {
    console.error("Registration failed", e);
  }
}

document.getElementById("eventForm").addEventListener("submit", function(e) {
  e.preventDefault();
  document.getElementById("confirmation").innerText = "Thank you for registering!";
});

function countChars(el) {
  document.getElementById("charCount").innerText = `Characters: ${el.value.length}`;
}

function videoReady() {
  document.getElementById("videoMsg").innerText = "Video ready to play!";
}

function savePreference(value) {
  localStorage.setItem("preferredEvent", value);
}

function restorePreference() {
  const saved = localStorage.getItem("preferredEvent");
  if (saved) {
    document.getElementById("eventType").value = saved;
  }
}

function clearPreferences() {
  localStorage.clear();
  sessionStorage.clear();
  alert("Preferences cleared.");
}

function findNearby() {
  if (!navigator.geolocation) {
    return alert("Geolocation is not supported");
  }
  navigator.geolocation.getCurrentPosition(
    position => {
      document.getElementById("locationResult").innerText =
        `Latitude: ${position.coords.latitude}, Longitude: ${position.coords.longitude}`;
    },
    error => {
      document.getElementById("locationResult").innerText = "Unable to get location.";
    },
    { enableHighAccuracy: true, timeout: 5000 }
  );
}
