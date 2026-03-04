import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/chronos/presentation/screens/timeline_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/profile/presentation/screens/settings_screen.dart';
import '../../features/tasks/presentation/screens/task_list_screen.dart';
import 'navigation_shell.dart';
import 'route_names.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteNames.timeline,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return NavigationShell(child: child);
        },
        routes: [
          GoRoute(
            path: RouteNames.timeline,
            builder: (context, state) => const TimelineScreen(),
          ),
          GoRoute(
            path: RouteNames.tasks,
            builder: (context, state) => const TaskListScreen(),
          ),
          GoRoute(
            path: RouteNames.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: RouteNames.settings,
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
