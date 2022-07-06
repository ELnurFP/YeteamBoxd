import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yeteamboxd/models/populyar_movies.dart';
import 'package:yeteamboxd/models/title.dart';
import 'package:yeteamboxd/services/title.dart';

final titleProvider = FutureProvider.family<Title, String>((ref, id) async {
  return ref.read(apiProvider).getTitledata(id);
});

final populyarMoviesProvider = FutureProvider<PopulyarMovies>((ref) async {
  return ref.read(apiProvider).getPopulyarMovies();
});
