import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'google_places_api_flutter_method_channel.dart';

abstract class GooglePlacesApiFlutterPlatform extends PlatformInterface {
  /// Constructs a GooglePlacesApiFlutterPlatform.
  GooglePlacesApiFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static GooglePlacesApiFlutterPlatform _instance = MethodChannelGooglePlacesApiFlutter();

  /// The default instance of [GooglePlacesApiFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelGooglePlacesApiFlutter].
  static GooglePlacesApiFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GooglePlacesApiFlutterPlatform] when
  /// they register themselves.
  static set instance(GooglePlacesApiFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
