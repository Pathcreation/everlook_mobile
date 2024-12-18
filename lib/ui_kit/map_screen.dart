import 'package:everlook_mobile/source/imports.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  CameraPosition _currentPosition = const CameraPosition(
    target: LatLng(25.229751925233693, -122.085749655962),
    zoom: 14.4746,
  );

  final Set<Marker> _markers = {};

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    await _determinePosition().then((position) {
      _currentPosition = CameraPosition(
        target: LatLng(
          position.latitude,
          position.longitude,
        ),
        zoom: 14.4746,
      );
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_currentPosition.toString()),
        position: _currentPosition.target,
        icon: BitmapDescriptor.defaultMarker,
      ));
      _goToCurrentPosition();
    });
  }

  Future<void> _goToCurrentPosition() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_currentPosition));
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

  @override
  Widget build(BuildContext context) {
    return PlacePicker(
      apiKey: 'AIzaSyC1-J0OLNbQv8198ho0XZOk5Hxnx2iohXo',
      onPlacePicked: (LocationResult result) {
        debugPrint("Place picked: ${result.formattedAddress}");
      },
      initialLocation: _currentPosition.target,
      searchInputConfig: const SearchInputConfig(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        autofocus: false,
        textDirection: TextDirection.ltr,
      ),
      searchInputDecorationConfig: const SearchInputDecorationConfig(
        hintText: "Search for a building, street or ...",
      ),
    );
  }
}
