import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yeteamboxd/models/title.dart';
import 'package:yeteamboxd/services/title.dart';

final titleProvider = FutureProvider<Title>((ref) async {
  return ref.read(apiProvider).getTitledata(ref);
});
