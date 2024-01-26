import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/failure.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading(HomeContentType contentType) = _Loading;
  const factory HomeState.data(HomeContentType contentType, List<int> ids) =
      _Data;
  const factory HomeState.error(HomeContentType contentType, Failure failure) =
      _Error;
  const factory HomeState.about(HomeContentType contentType) = _About;
}

enum HomeContentType { top, about }

extension HomeContentText on HomeContentType {
  String get name {
    switch (this) {
      case HomeContentType.top:
        return "Top";
      case HomeContentType.about:
        return "About";
      default:
        return "unknown";
    }
  }
}
