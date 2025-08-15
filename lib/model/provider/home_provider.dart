import 'package:flutter/widgets.dart';
import 'package:travel/model/data/travels.dart';
import 'package:travel/model/repo/travels_repository.dart';

class HomeProvider with ChangeNotifier {
  final TravelsRepository _travelsRepository;
  HomeProvider(this._travelsRepository) {
    fetchTravels();
  }

  List<Travel> _travels = [];
  List<Travel> get travels => _travels;

  fetchTravels() async {
    _travels = await _travelsRepository.fetchTravels();
    notifyListeners();
  }

  Future<Travel> getTravelById(String id) async {
    final travel = await _travelsRepository.getTravelsById(id);
    return travel;
  }

}