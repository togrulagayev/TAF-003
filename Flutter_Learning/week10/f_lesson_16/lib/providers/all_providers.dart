import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider =
    StateNotifierProvider<CounterProvider, int>((ref) => CounterProvider());

final titleProvider =
    StateNotifierProvider<TitleProvider, String>((ref) => TitleProvider());

class CounterProvider extends StateNotifier<int> {
  CounterProvider() : super(0);

  void increment() => state++;
  void decrement() => state--;

  void reset() => state = 0;
}

class TitleProvider extends StateNotifier<String> {
  TitleProvider() : super('Counter Appp');

  void updateTitle() => state = 'Demo App';
}
