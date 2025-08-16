import 'package:flutter/widgets.dart';
import 'package:travel/model/data/travel.dart';
import 'package:travel/model/repo/travels_repository.dart';
class HomeProvider with ChangeNotifier {
  final TravelsRepository _travelsRepository;
  
  HomeProvider(this._travelsRepository) {
    fetchTravels();
  }

  List<Travel> _travelsData = [];
  List<Travel> get travelsData => _travelsData;
  
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  
  String? _error;
  String? get error => _error;

  Future<void> fetchTravels() async {
    if (_travelsData.isNotEmpty) return;
    
    _isLoading = true;
    _error = null;
    notifyListeners();
    
    try {
      _travelsData = _travelsRepository.loadTravels();
    } catch (e) {
      _error = e.toString();
      _travelsData = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}