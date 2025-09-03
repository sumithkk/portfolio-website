import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Portfolio Website',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ProjectDetailsPage(),
    ),
  );
}

class ProjectDetailsPage extends StatelessWidget {
  // --- Image placeholders (add these files under assets and pubspec.yaml) ---
  static const String bannerImage = "assets/app-banner.png";
  static const String ecomBanner = "assets/website.png";
  static const String webImage = "assets/dash.png";
  static const String adminImage = "assets/admin-dash.png";

  // --- Icons for bullet points ---
  static const IconData architectureIcon = LucideIcons.layoutGrid;
  static const IconData customerJourneyIcon = LucideIcons.map;
  static const IconData techStackIcon = LucideIcons.code;
  static const IconData scalabilityIcon = LucideIcons.server;
  static const IconData securityIcon = LucideIcons.shield;

  static const IconData authenticationIcon = LucideIcons.logIn;
  static const IconData personalizedHomeIcon = LucideIcons.house;
  static const IconData catalogFiltersIcon = LucideIcons.listFilter600;
  static const IconData checkoutIcon = LucideIcons.creditCard;
  static const IconData orderTrackingIcon = LucideIcons.package;
  static const IconData uxPolishIcon = LucideIcons.grid2x2;

  static const IconData seo = LucideIcons.search;
  static const IconData landing = LucideIcons.bookOpenText;
  static const IconData navigation = LucideIcons.navigation;
  static const IconData design = LucideIcons.component;
  static const IconData checkout = LucideIcons.badgeCheck;
  static const IconData performance = LucideIcons.layers;
  static const IconData analytics = LucideIcons.chartColumnStacked;

  static const IconData catalog = LucideIcons.libraryBig;
  static const IconData inventory = LucideIcons.chartCandlestick;
  static const IconData orders = LucideIcons.shoppingBasket;
  static const IconData promotion = LucideIcons.badgeIndianRupee;
  static const IconData security = LucideIcons.shield;
  static const IconData chat = LucideIcons.messageCircleMore;
  static const IconData brain = LucideIcons.brain;

  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <
        600; // Check if the device is mobile

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Centered Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  height: 400, // Set the desired height here
                  child: Image.asset(
                    "assets/app-image.jpg",
                    fit: isMobile
                        ? BoxFit.fitWidth
                        : BoxFit.cover, // Adjust the fit property as needed
                    errorBuilder: (context, _, __) => Container(
                      height: 80,
                      color: const Color(0xFFEAEAEA),
                      alignment: Alignment.center,
                      child: const Text(
                        "Add screenshot:\nassets/app-image.jpg",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Page Title
            Center(
              child: Text(
                "E-Commerce Platform",
                style: TextStyle(
                  fontSize: isMobile ? 28 : 36, // Adjust font size for mobile
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 12),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "An enterprise-grade e-commerce ecosystem built from the ground up designed for scalability, performance, and seamless customer experience. This project spans a Flutter mobile app, a responsive web storefront, and a feature-rich admin dashboard, all powered by a modular microservices backend.\n\nTech Stack:\n",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:
                          isMobile ? 16 : 28, // Adjust font size for mobile
                      color: Color.fromARGB(255, 34, 32, 32),
                      height: 1.7,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 30),
                      SvgPicture.asset(
                        'assets/flutter.svg', // Path to your SVG file
                        height: isMobile ? 20 : 40,
                      ),
                      const SizedBox(width: 30),
                      SvgPicture.asset(
                        'assets/node.svg', // Path to your SVG file
                        height: isMobile ? 20 : 40,
                      ),
                      const SizedBox(width: 30),
                      SvgPicture.asset(
                        'assets/razorpay.svg', // Path to your SVG file
                        height: isMobile ? 20 : 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(architectureIcon,
                          size: 24, color: Colors.black87),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Architecture: A cloud-native, containerized microservices setup with secure APIs and CI/CD automation.",
                          style: TextStyle(
                            fontSize: isMobile
                                ? 16
                                : 20, // Adjust font size for mobile
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(customerJourneyIcon,
                          size: 24, color: Colors.black87),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Customer Journey: Covers discovery → add-to-cart → checkout → payment → order management.",
                          style: TextStyle(
                            fontSize: isMobile
                                ? 16
                                : 20, // Adjust font size for mobile
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(techStackIcon, size: 24, color: Colors.black87),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Tech Stack: Node.js backend services, Flutter for both mobile & web, integrated with Razorpay for payments.",
                          style: TextStyle(
                            fontSize: isMobile
                                ? 16
                                : 20, // Adjust font size for mobile
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(scalabilityIcon, size: 24, color: Colors.black87),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Scalability: Designed to handle thousands of concurrent shoppers with load balancing and caching.",
                          style: TextStyle(
                            fontSize: isMobile
                                ? 16
                                : 20, // Adjust font size for mobile
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(securityIcon, size: 24, color: Colors.black87),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Security: Role-based access control, tokenized APIs, and secure payment gateway integration.",
                          style: TextStyle(
                            fontSize: isMobile
                                ? 16
                                : 20, // Adjust font size for mobile
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),

            const _Section(
              title: "Mobile App — Flutter",
              imagePath: bannerImage,
              description: "",
            ),
            const SizedBox(height: 36),

            const _SmallSection(
              description:
                  "Authentication: OTP & email login with secure token storage.",
              icon: authenticationIcon,
            ),
            const _SmallSection(
              description:
                  "Personalized Home: Dynamic banners, curated collections, and product recommendations.",
              icon: personalizedHomeIcon,
            ),
            const _SmallSection(
              description:
                  "Catalog & Filters: Multi-level filters, variant selection, and wishlist support.",
              icon: catalogFiltersIcon,
            ),
            const _SmallSection(
              description:
                  "Checkout: Razorpay-powered payments, coupon handling, and order confirmation flow.",
              icon: checkoutIcon,
            ),
            const _SmallSection(
              description:
                  "Order Tracking: Full order history, live status updates, and easy cancellations/returns.",
              icon: orderTrackingIcon,
            ),
            const _SmallSection(
              description:
                  "UX Polish: Smooth animations, skeleton loading, offline caching — making the app feel premium.",
              icon: uxPolishIcon,
            ),
            const _SmallSection(
              description:
                  "Live Chat: Real-time customer support with instant messaging capabilities.",
              icon: chat,
            ),
            const _SmallSection(
              description:
                  "Aura AI: AI-powered recommendations and insights for a personalized shopping experience.",
              icon: brain,
            ),
            const SizedBox(height: 36),

            const _Section(
                title: "Website — E-Com Frontend (Web)",
                imagePath: ecomBanner,
                description:
                    "An SEO-friendly, Flutter Web-based storefront designed for desktop & mobile browsers"),

            const SizedBox(height: 36),

            const _SmallSection(
              description:
                  "Landing Pages: High-conversion banners, editorial sections, and promotional campaigns.",
              icon: landing,
            ),
            const _SmallSection(
              description:
                  "Search & Navigation: Elasticsearch-backed search, faceted filters, and fast page loads.",
              icon: navigation,
            ),
            const _SmallSection(
              description:
                  "Responsive Design: Works flawlessly across devices with adaptive grid layouts.",
              icon: design,
            ),
            const _SmallSection(
              description:
                  "Checkout Experience: Persisted cart, address autocomplete, guest checkout support.",
              icon: checkout,
            ),
            const _SmallSection(
              description:
                  "Performance: Image optimization, code-splitting, and lazy loading for fast interactions.",
              icon: performance,
            ),
            const _SmallSection(
              description:
                  "Analytics: Event tracking and funnel monitoring to improve conversion rates.",
              icon: analytics,
            ),

            const SizedBox(height: 36),

            const _Section(
                title: "Admin — E-Com Admin Frontend",
                imagePath: webImage,
                description:
                    "An internal dashboard enabling operations and business teams to manage everything:\n\n"),

            const _SmallSection(
              description:
                  "Catalog Management: Create/update products, variants, collections, and upload images",
              icon: catalog,
            ),
            const _SmallSection(
              description:
                  "Inventory Control: Real-time stock view, purchase orders, and low-stock alerts.",
              icon: inventory,
            ),
            const _SmallSection(
              description:
                  "Orders & Returns: Monitor order lifecycle, approve refunds, handle returns seamlessly.",
              icon: orders,
            ),
            const _SmallSection(
              description:
                  "Promotions & Content: Manage coupons, schedule homepage banners, and launch campaigns.",
              icon: promotion,
            ),
            const _SmallSection(
              description:
                  "Analytics: Visual dashboards with revenue charts, top products, and sales trends.",
              icon: analytics,
            ),
            const _SmallSection(
              description:
                  "Security: Role-based permissions so each team has just the right access.",
              icon: security,
            ),
            const _SmallSection(
              description: "Chat Support: Live chat support for customers.",
              icon: chat,
            ),

            const SizedBox(height: 30),

            // Contact Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.go('/contact');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Let’s Connect!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- Reusable section widget ---
class _Section extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _Section({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final headingStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        );
    final bodyStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: 18, // Increased font size
          color: Colors.black87,
          height: 1.5,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: headingStyle),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
            errorBuilder: (context, _, __) => Container(
              height: 220,
              color: const Color(0xFFEAEAEA),
              alignment: Alignment.center,
              child: Text(
                "Add screenshot:\n$imagePath",
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black45),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(description,
            style: bodyStyle?.copyWith(fontWeight: FontWeight.w600)),
      ],
    );
  }
}

// --- Reusable section widget ---
class _SmallSection extends StatelessWidget {
  final IconData icon;
  final String description;

  const _SmallSection({
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <
        600; // Check if the device is mobile
    final bodyStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: isMobile ? 16 : 20, // Increased font size
          color: Colors.black87,
          height: 1.8,
        );

    return Row(
      children: [
        Icon(icon, size: 24, color: Colors.black87),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            description,
            style: bodyStyle?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
