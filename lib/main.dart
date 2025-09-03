import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/homepage.dart';
import 'pages/works_page.dart';
import 'pages/contact_page.dart';
import 'pages/about_page.dart';
import 'pages/project_details_page.dart';
import 'widgets/navbar.dart';
import 'widgets/footer.dart';

void main() {
  runApp(const PortfolioWebsite());
}

class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SharedLayout(child: HomePage()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/works',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SharedLayout(child: WorksPage()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/contact',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SharedLayout(child: ContactPage()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/projects',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SharedLayout(child: WorksPage()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/about',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SharedLayout(child: AboutPage()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/project-details',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SharedLayout(child: ProjectDetailsPage()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Portfolio Website',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'Dosis',
            ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      routerConfig: router,
    );
  }
}

class SharedLayout extends StatelessWidget {
  final Widget child;

  const SharedLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const NavBar(),
          Expanded(child: child),
          if (!isMobile) const Footer(),
        ],
      ),
    );
  }
}
