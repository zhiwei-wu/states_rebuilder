import 'package:states_rebuilder/states_rebuilder.dart';
import '../viewModels/counter1_share_model._same_view.dart';
import '../viewModels/counter2_share_model._same_view.dart';

class CounterServiceSameView {
  int _counter = 0;
  int get counter => _counter;

  increment() {
    _counter++;
    _rebuildStates();
  }

  _rebuildStates() {
    Injector.get<Counter1ShareModelSameView>().rebuildStates();
    Injector.get<Counter2ShareModelSameView>().rebuildStates();
  }
}