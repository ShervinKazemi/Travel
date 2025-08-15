import 'package:flutter/widgets.dart';
import 'package:travel/model/data/travel.dart';
import 'package:travel/model/repo/travels_repository.dart';
class HomeProvider with ChangeNotifier {
  final TravelsRepository _travelsRepository;
  HomeProvider(this._travelsRepository){
    fetchTravels();
  }

  List<Travel> _travelsData = [];
  List<Travel> get travelsData => _travelsData;
  String error = "";
  bool isLoading = false;

  fetchTravels() {
    isLoading = true;
    notifyListeners();
    try {
      if (_travelsData.isEmpty) {
        _travelsData = _travelsRepository.loadTravels();
      }
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}