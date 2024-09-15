google_places_api_flutter

google_places_api_flutter is a Flutter package for integrating Google Places API into your Flutter apps, offering real-time autocomplete suggestions, place details, and more.

✨ Features
Autocomplete Places Search: Get real-time place suggestions as the user types.
Place Details: Fetch detailed information for a specific place, including address, latitude, and longitude.
Customizable UI: Easily style the autocomplete suggestions dropdown.
Support for Lat/Long Retrieval: Option to retrieve latitude and longitude for selected places.
🚀 Getting Started
To get started with google_places_api_flutter, you'll need to create a Google API Key with access to the Places API.

1. Set Up Your Google API Key
Visit the Google Cloud Console.
Create a new project or use an existing one.
Navigate to APIs & Services > Library.
Search for Places API and enable it.
Go to APIs & Services > Credentials, and create a new API key.
(Optional) Restrict your API key to the Places API for enhanced security.
2. Install the Package
Add the following line to your pubspec.yaml file:

yaml
Copy code
dependencies:
  google_places_api_flutter: ^1.0.0
Run the following command to install the package:

bash
Copy code
flutter pub get
3. Usage
Import the package:
dart
Copy code
import 'package:google_places_api_flutter/google_places_api_flutter.dart';
Example: Autocomplete with Lat/Long Retrieval
Here’s how to use PlaceSearchField to display an autocomplete search field, allowing users to select places and retrieve latitude/longitude:

dart
Copy code
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_places_api_flutter/google_places_api_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: PlaceSearchField(
            apiKey: "YOUR_GOOGLE_API_KEY",  // Replace with your actual API key
            isLatLongRequired: true,        // Fetch lat/long with place details
            webCorsProxyUrl: "https://cors-anywhere.herokuapp.com",  // Optional for web
            onPlaceSelected: (placeId, latLng) async {
              log('Place ID: $placeId');
              log('Latitude and Longitude: $latLng');
            },
            decorationBuilder: (context, child) {
              return Material(
                type: MaterialType.card,
                elevation: 4,
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                child: child,
              );
            },
            itemBuilder: (context, prediction) => ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(
                prediction.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
⚙️ Parameters
apiKey: Your Google API key.
isLatLongRequired: Set to true to fetch latitude and longitude along with the place details.
webCorsProxyUrl: Optional proxy URL for handling CORS issues in web apps.
onPlaceSelected: Callback that returns the place's ID and latitude/longitude when a place is selected.
decorationBuilder: A builder function to customize the look of the autocomplete suggestions dropdown.
itemBuilder: Customize how each prediction item is displayed in the dropdown list.
📱 Example App
Clone this repository and navigate to the example directory to run the demo app:

bash
Copy code
git clone https://github.com/mhdaslam790/google_places_api_flutter.git
cd google_places_api_flutter/example
flutter run
🔒 API Key Restrictions
It's important to secure your API key by restricting access to it. Follow these steps to restrict your API key:

Visit the Google Cloud Console.
Go to APIs & Services > Credentials.
Select your API key, then click Edit.
Under Application Restrictions, select the platforms that can use this key (e.g., HTTP referrer for web apps, IP addresses, or mobile apps).
Under API restrictions, limit the key to only access the Places API.
🌟 Additional Features
Place Photos: Fetch photos related to places using the Places API.
Autocomplete Filters: You can add filters (e.g., restrict to a specific country or location type).
💻 Contributing
We welcome contributions! Feel free to fork this repository, open issues, and submit pull requests.

Fork the repository.
Create a new branch.
Make your changes and commit them.
Push to your branch and submit a pull request.
📄 License
This package is licensed under the MIT License. See the LICENSE file for more details.

📝 Notes:
Replace YOUR_GOOGLE_API_KEY in the example with your actual Google API key.
webCorsProxyUrl: This parameter is mainly for web environments to handle CORS issues. You can omit it for mobile apps.
