import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  String _title = 'Home View';

  String get title => '$_title $counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
