import 'package:fund_app/redux/state/mutualfund_state.dart';
import 'package:fund_app/redux/state/user_state.dart';
import 'package:meta/meta.dart';

import 'loading_state.dart';

@immutable
class AppState {
  final UserState userState;
  final LoadingState loadingState;
  final MutualFundState mutualFundState;

  AppState(
      {required this.userState,
      required this.loadingState,
      required this.mutualFundState});

  factory AppState.initial() {
    return AppState(
        userState: UserState.initial(),
        loadingState: LoadingState.initial(),
        mutualFundState: MutualFundState.initial());
  }


}
