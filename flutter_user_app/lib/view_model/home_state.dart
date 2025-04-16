import '../model/user.dart';

class HomeState {
  final User? user;
  final String? fetchTime;
  final bool isLoading;
  final String? error;

  HomeState({
    this.user,
    this.fetchTime,
    this.isLoading = false,
    this.error,
  });

  HomeState copyWith({
    User? user,
    String? fetchTime,
    bool? isLoading,
    String? error,
  }) {
    return HomeState(
      user: user ?? this.user,
      fetchTime: fetchTime ?? this.fetchTime,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
