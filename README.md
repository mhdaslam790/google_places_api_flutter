# google_places_api_flutter

[![pub package](https://img.shields.io/pub/v/google_places_api_flutter.svg)](https://pub.dev/packages/google_places_api_flutter)
[![Platform](https://img.shields.io/badge/platform-flutter-blue.svg)](https://flutter.dev/)

**google_places_api_flutter** is a Flutter package for integrating Google Places API into your Flutter apps, offering real-time autocomplete suggestions, place details, and more.

---

## ✨ Features

- **Autocomplete Places Search**: Get real-time place suggestions as the user types.
- **Place Details**: Fetch detailed information for a specific place, including address, latitude, and longitude.
- **Customizable UI**: Easily style the autocomplete suggestions dropdown.
- **Support for Lat/Long Retrieval**: Option to retrieve latitude and longitude for selected places.

---

## 🚀 Getting Started

To get started with **google_places_api_flutter**, you'll need to create a **Google API Key** with access to the **Places API**.

### 1. Set Up Your Google API Key

1. **Visit the [Google Cloud Console](https://console.cloud.google.com/).**
2. **Create a new project** or use an existing one.
3. **Navigate to** **APIs & Services** > **Library**.
4. **Search for** **Places API** and enable it.
5. **Go to** **APIs & Services** > **Credentials**, and create a new API key.
6. **(Optional)** Restrict your API key to the Places API for enhanced security.

### 2. Install the Package

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  google_places_api_flutter: ^1.0.0
```
## 🚀 Usage

To use `google_places_api_flutter`, follow the steps below.

### 1. Import the package:

```dart
import 'package:google_places_api_flutter/google_places_api_flutter.dart';
```
### 2. Example: Autocomplete with Lat/Long Retrieval

Here’s how to use `PlaceSearchField` to display an autocomplete search field, allowing users to select places and retrieve latitude/longitude:

```dart
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
```
### 📝 Notes

- **`apiKey`**: Replace `YOUR_GOOGLE_API_KEY` with your actual Google API key.
- **`isLatLongRequired`**: Set to `true` to fetch latitude and longitude along with the place details.
- **`webCorsProxyUrl`**: This parameter is optional and used to handle CORS issues for web apps. You can omit it for mobile apps.
- **`UI Customization`**: To see how to modify the UI components of the autocomplete field, refer to the [flutter_typeahead](https://pub.dev/packages/flutter_typeahead) package. This package offers extensive customization options for the typeahead widget used in the `PlaceSearchField`.

## 💻 Contributing

We welcome contributions! If you’d like to contribute to the project, please follow these steps:

1. **Fork the repository**: Click the "Fork" button at the top right of the repository page to create your own copy of the project.
2. **Create a new branch**: Create a new branch for your changes. This helps keep your work organized and separate from the main codebase.
3. **Make your changes**: Implement your changes and test them thoroughly.
4. **Commit your changes**: Add a clear and concise commit message describing your changes.
5. **Push to your branch**: Push your changes to your forked repository.
6. **Submit a pull request**: Open a pull request from your branch to the `main` branch of the original repository. Provide a detailed description of your changes and why they are needed.

We appreciate your contributions and will review your pull request as soon as possible.
