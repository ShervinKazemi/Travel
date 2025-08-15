import 'package:flutter/services.dart';
import 'package:travel/model/data/travels.dart';
import 'package:travel/util/constants.dart';

class JsonDataService {
  Future<List<Travel>> loadTravels() async {
    final response = await rootBundle.loadString(AppConstants.travelsData);
    final travel = travelsFromJson(response).travels;
    
    return travel;
  }
}