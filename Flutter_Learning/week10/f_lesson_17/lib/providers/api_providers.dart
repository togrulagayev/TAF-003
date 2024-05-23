import 'package:f_lesson_17/services/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = FutureProvider(
  (ref) => ApiService().getAllUSer(),
);
