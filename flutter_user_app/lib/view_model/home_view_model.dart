import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user.dart';
import '../repository/user_repository.dart';
import 'home_state.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  return HomeViewModel();
});

class HomeViewModel extends StateNotifier<HomeState> {
  final UserRepository _repository = UserRepository();

  HomeViewModel() : super(HomeState());

  Future<void> fetchUser() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await _repository.getUser();
      final now = DateTime.now().toString();
      state = state.copyWith(
        user: user,
        fetchTime: now,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }
}
