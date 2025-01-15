import 'package:everlook_mobile/source/imports.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:place_picker_google/place_picker_google.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  Completer<AndroidMapRenderer?>? _initializedRendererCompleter;

  CameraPosition _currentPosition = const CameraPosition(
    target: LatLng(55.75674929493727, 37.624365142822256),
    zoom: 14.4746,
  );

  final Set<Marker> _markers = {};

  @override
  void initState() {
    init();
    // initializeMapRenderer();

    super.initState();
  }

  void init() async {
    await _determinePosition().then((position) {
      _currentPosition = CameraPosition(
          target: LatLng(
            position.latitude,
            position.longitude,
          ),
          zoom: 17,
          bearing: 270.0,
          tilt: 30);
      // _markers.add(Marker(
      //   // This marker id can be anything that uniquely identifies each marker.
      //   markerId: MarkerId(_currentPosition.toString()),
      //   position: _currentPosition.target,
      //   icon: BitmapDescriptor.defaultMarker,
      // ));
      _goToCurrentPosition();
      setState(() {});
    });
  }

  Future<void> _goToCurrentPosition() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_currentPosition)).then((_) {
      print('NEW_CAMERA_POSITION');
    }, onError: (error, st) {
      print('ERROR: $error/ $st');
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<AndroidMapRenderer?> initializeMapRenderer() async {
    if (_initializedRendererCompleter != null) {
      return _initializedRendererCompleter!.future;
    }

    final Completer<AndroidMapRenderer?> completer = Completer<AndroidMapRenderer?>();
    _initializedRendererCompleter = completer;

    WidgetsFlutterBinding.ensureInitialized();

    final GoogleMapsFlutterPlatform mapsImplementation = GoogleMapsFlutterPlatform.instance;
    if (mapsImplementation is GoogleMapsFlutterAndroid) {
      unawaited(mapsImplementation.initializeWithRenderer(AndroidMapRenderer.latest).then((AndroidMapRenderer initializedRenderer) => completer.complete(initializedRenderer)));
    } else {
      completer.complete(null);
    }

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _currentPosition,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
