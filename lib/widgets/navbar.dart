import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_website/utils/analytics.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GoRouter.of(context).routeInformationProvider,
      builder: (context, routeInformation, _) {
        final currentLocation = routeInformation.uri.toString();
        final isProjectDetailsRoute = currentLocation == '/project-details';

        final isMobile = MediaQuery.of(context).size.width < 600;

        sendPageView(currentLocation);

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          color: isProjectDetailsRoute
              ? Colors.white
              : Colors.black.withOpacity(0.5),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sumith's Portfolio",
                      style: TextStyle(
                        color:
                            isProjectDetailsRoute ? Colors.black : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _NavItem(title: "Home", onTap: () => context.go('/')),
                        _NavItem(
                            title: "Projects",
                            onTap: () => context.go('/projects')),
                        _NavItem(
                            title: "About", onTap: () => context.go('/about')),
                        _NavItem(
                            title: "Contact",
                            onTap: () => context.go('/contact')),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sumith's Portfolio",
                      style: TextStyle(
                        color:
                            isProjectDetailsRoute ? Colors.black : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        _NavItem(title: "Home", onTap: () => context.go('/')),
                        _NavItem(
                            title: "Projects",
                            onTap: () => context.go('/projects')),
                        _NavItem(
                            title: "About", onTap: () => context.go('/about')),
                        _NavItem(
                            title: "Contact",
                            onTap: () => context.go('/contact')),
                      ],
                    ),
                  ],
                ),
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NavItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GoRouter.of(context).routeInformationProvider,
      builder: (context, routeInformation, _) {
        final currentLocation = routeInformation.uri.toString();
        final isProjectDetailsRoute = currentLocation == '/project-details';

        return InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: TextStyle(
                  color: isProjectDetailsRoute
                      ? const Color.fromARGB(255, 59, 58, 58)
                      : Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        );
      },
    );
  }
}
