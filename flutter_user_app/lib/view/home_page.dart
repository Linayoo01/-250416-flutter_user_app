import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/home_view_model.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.read(homeViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod MVVM 예제')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('이름: ${state.user?.name ?? "불러오는 중..."}'),
            Text('나이: ${state.user?.age ?? ""}'),
            Text('불러온 시간: ${state.fetchTime ?? ""}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: viewModel.fetchUser,
              child: const Text('정보 가져오기'),
            ),
          ],
        ),
      ),
    );
  }
}
