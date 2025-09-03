import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart'; // Add this to pubspec.yaml
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final descriptionWidth = isMobile
        ? screenWidth * 0.9
        : screenWidth * 1; // Adjust description width

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Stack(
              children: [
                Image.asset(
                  isMobile ? 'assets/profile.jpg' : 'assets/portfolio-bg.jpg',
                  fit: BoxFit.cover, // Ensure the image covers the entire area
                  width: MediaQuery.of(context)
                      .size
                      .width, // Set width to full screen width
                  height: MediaQuery.of(context)
                      .size
                      .height, // Set height to full screen height
                ),
                if (isMobile)
                  Positioned.fill(
                    child: Container(
                      color: Colors.black
                          .withOpacity(0.5), // Black overlay with opacity
                    ),
                  ),
              ],
            ),
          ),

          // Content overlay
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: descriptionWidth *
                          0.08), // Adjust padding based on description width
                  child: isMobile
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: _buildContent(context, isMobile),
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Left side text
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: _buildContent(context, isMobile),
                                ),
                              ),
                            ),
                            // Right side (future illustration or profile image)
                            const Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context, bool isMobile) {
    return [
      Text(
        "Hi, I'm Sumith 👋",
        style: TextStyle(
          fontSize: isMobile ? 30 : 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 16),
      Text(
        "🚀 Software Engineer with 9+ years of experience "
        "building scalable, production-grade systems.\n\n"
        "💼 Worked at Bigbasket & BestDoc delivering cloud-native solutions "
        "used by millions of users.\n\n"
        "🛍️ Currently leading development of a **full-stack e-commerce platform** "
        "covering mobile, web, and admin dashboards — engineered for speed, "
        "conversion, and scalability.",
        style: TextStyle(
          fontSize: isMobile ? 16 : 20,
          fontWeight: FontWeight.w600,
          color: Colors.white70,
          height: 1.6,
        ),
      ),
      const SizedBox(height: 24),
      Text(
        "💡 Explore my latest projects or drop me a message if you'd like to collaborate!",
        style: TextStyle(
          fontSize: isMobile ? 16 : 20,
          color: Colors.white70,
        ),
      ),
      const SizedBox(height: 32),
      ElevatedButton(
        onPressed: () {
          context.go('/contact'); // Using go_router for navigation
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          "Do You Have an Idea? Let's Talk 💬",
          style: TextStyle(
            fontSize: isMobile ? 16 : 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(height: 24),

      // Social Links Row
      Row(
        mainAxisAlignment:
            isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: const [
          _SocialButton(
            icon: LucideIcons.github,
            url: "https://github.com/sumithkk/",
          ),
          SizedBox(width: 16),
          _SocialButton(
            icon: LucideIcons.linkedin,
            url: "https://www.linkedin.com/in/sumith-kk/",
          ),
          SizedBox(width: 16),
          _SocialButton(
            icon: LucideIcons.instagram,
            url: "https://www.instagram.com/sumith_kk/",
          ),
        ],
      ),
    ];
  }
}

// --- Reusable Social Icon Button ---
class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String url;

  const _SocialButton({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.1),
          border: Border.all(color: Colors.white30),
        ),
        child: Icon(
          icon,
          size: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
