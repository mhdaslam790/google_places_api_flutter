import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'google_places_api_flutter_platform_interface.dart';

/// An implementation of [GooglePlacesApiFlutterPlatform] that uses method channels.
class MethodChannelGooglePlacesApiFlutter extends GooglePlacesApiFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('google_places_api_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
