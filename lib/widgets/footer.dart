import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GoRouter.of(context).routeInformationProvider,
      builder: (context, routeInformation, _) {
        final currentLocation = routeInformation.uri.toString();
        final isProjectDetailsRoute = currentLocation == '/project-details';

        return Container(
          color: isProjectDetailsRoute
              ? Colors.white
              : Colors.black.withOpacity(0.6),
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              "© 2025 Sumith KK. All rights reserved.",
              style: TextStyle(
                color: isProjectDetailsRoute ? Colors.black54 : Colors.white70,
                fontSize: 14,
              ),
            ),
          ),
        );
      },
    );
  }
}
