import 'package:flutter_test/flutter_test.dart';
import 'package:google_places_api_flutter/google_places_api_flutter.dart';
import 'package:google_places_api_flutter/google_places_api_flutter_platform_interface.dart';
import 'package:google_places_api_flutter/google_places_api_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGooglePlacesApiFlutterPlatform
    with MockPlatformInterfaceMixin
    implements GooglePlacesApiFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GooglePlacesApiFlutterPlatform initialPlatform = GooglePlacesApiFlutterPlatform.instance;

  test('$MethodChannelGooglePlacesApiFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGooglePlacesApiFlutter>());
  });

  test('getPlatformVersion', () async {
    GooglePlacesApiFlutter googlePlacesApiFlutterPlugin = GooglePlacesApiFlutter();
    MockGooglePlacesApiFlutterPlatform fakePlatform = MockGooglePlacesApiFlutterPlatform();
    GooglePlacesApiFlutterPlatform.instance = fakePlatform;

    expect(await googlePlacesApiFlutterPlugin.getPlatformVersion(), '42');
  });
}
