import 'package:dartz/dartz.dart';
import 'package:hnread/item/item_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/repository/repository.dart';

import '../models/failure.dart';
import 'home_state.dart';

final homeContentTypeProvider = StateProvider((ref) => HomeContentType.top);

final homeNotifierProvider = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) {
    final repository = ref.watch(repositoryProvider);
    final type = ref.watch(homeContentTypeProvider);
    return HomeNotifier(repository, ref, type);
  },
);

class HomeNotifier extends StateNotifier<HomeState> {
  final Repository repository;
  final Ref ref;
  final HomeContentType type;

  HomeNotifier(this.repository, this.ref, this.type)
      : super(HomeState.loading(type)) {
    load();
  }

  Future<void> load() async {
    state = HomeState.loading(type);
    late final Either<Failure, List<int>> failureOrIDs;
    failureOrIDs = await repository.getTopStoryIds();

    if (!mounted) return;
    state = failureOrIDs.fold(
      (failure) => HomeState.error(type, failure),
      (ids) => HomeState.data(type, ids),
    );
  }

  void refresh() {
    state.maybeWhen(
      data: (type, ids) {
        for (var id in ids) {
          ref.refresh(itemFamily(id));
        }
      },
      orElse: () {},
    );

    load();
  }

  void showAbout() {
    // Logic to change state to 'about'
    state = HomeState.about(type);
  }
}
