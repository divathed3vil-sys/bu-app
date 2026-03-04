import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routing/app_router.dart';
import 'core/theme/bu_theme.dart';

void main() {
  runApp(const ProviderScope(child: BuApp()));
}

class BuApp extends ConsumerWidget {
  const BuApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: BuTheme.dark,
      routerConfig: router,
    );
  }
}
