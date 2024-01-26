import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/data/api.dart';
import '/models/failure.dart';
import '/models/item.dart';
import 'package:dartz/dartz.dart';

final repositoryProvider = Provider((ref) {
  final api = ref.watch(apiProvider);
  return Repository(api: api);
});

class Repository {
  final API api;

  const Repository({
    required this.api,
  });


  Future<Either<Failure, List<int>>> getTopStoryIds() async {
    try {
      return right(await api.getTopStoryIds());
    } catch (e) {
      return left(NetworkFailure());
    }
  }

  Future<Either<Failure, Item>> getItem(int id) async {
    try {
      return right(await api.getItem(id));
    } catch (e) {
      return left(NetworkFailure());
    }
  }

}
