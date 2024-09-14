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
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: PlaceSearchField(
            apiKey: "",
            isLatLongRequired: true,
            webCorsProxyUrl: "https://cors-anywhere.herokuapp.com",
            onPlaceSelected: (p0, p1) async {
              log(p0.toString());
              log(p1.toString());
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
