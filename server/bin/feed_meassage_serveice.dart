import 'package:protos/protos.dart';
import 'package:http/http.dart' as http;

class FeedMeassageServeice extends FeedServeiceServiceBase {
  FeedMeassageServeice();
  @override
  Future<VehicleData> getAvailableBus(
    ServiceCall call,
    GetAvailableBusRequest request,
  ) async {
    final headers = {
      "externalauth": 'RWLXTEgMcmuMj1mehBWi3ROaAfTmQwXjGksxvxD9'
    };

    final response = await http.get(
      Uri.parse(
          'https://external.chalo.com/dashboard/gtfs/realtime/thiruvananthapuram/ksrtc/bus'),
      headers: headers,
    );

    print(GetAvailableBusRequest.fromBuffer(response.bodyBytes));

    return VehicleData(vehicles: []);
  }
}
