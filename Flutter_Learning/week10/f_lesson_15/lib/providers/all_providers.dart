import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) => 'State Management Example');
final balanceProvider = StateProvider<int>((ref) => 1000);
