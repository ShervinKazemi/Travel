import 'package:travel/model/data/travels.dart';
import 'package:travel/util/services/json_data_service.dart';

class TravelsRepository {
  final JsonDataService _jsonDataService;
  TravelsRepository(this._jsonDataService);

  Future<List<Travel>> fetchTravels() async {
    return await _jsonDataService.loadTravels();
  }

  Future<Travel> getTravelsById(String id) {
    return _jsonDataService.loadTravels().then(
      (travels) => travels.firstWhere((travel) => travel.id == id)
    );
  }
}