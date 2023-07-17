# Driving directions

Teaching demonstration of how to make a web app using Mapbox APIs and Turf.js to give driving distance, driving time, and route to the nearest of several points of interest loaded from GeoJSON. The app will first try to find the user's location and start the route from there. Users can also enter a start location into the search box.

The file `server.py` is provided to launch a local web server to view the app offline. At the command line, navigate to the folder containing these files and then run `python server.py`. In your web browser, then navigate to `http://localhost:8000/` and the app should launch. (Note: If you don't launch a local server to view offline, your browser's Cross-Origin Resource Sharing policy will likely prevent loading of the local GeoJSON file.)

View the app online [here](https://paldhous.github.io/driving-directions-app/).