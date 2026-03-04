import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routing/app_router.dart';
import 'core/theme/bu_theme.dart';

void main() {
  runApp(const ProviderScope(child: BuApp()));
}

class BuApp extends StatelessWidget {
  const BuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: BuTheme.dark,
      routerConfig: appRouter,
    );
  }
}
