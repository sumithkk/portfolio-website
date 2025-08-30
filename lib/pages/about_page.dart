import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/portfolio-bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                        maxWidth: 0.75 * 1000), // 60% of a typical 1000px width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          "About Me",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: Colors.cyanAccent,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 24),

                        // Main bio section
                        _buildParagraph(
                          "I am Sumith KK, a seasoned Senior Software Engineer with over 9 years of experience designing, developing, and scaling modern web applications.",
                        ),
                        _buildParagraph(
                          "My career spans impactful roles at Bigbasket (India’s leading online grocery platform) and BestDoc Technologies (healthcare SaaS leader), along with multiple freelance projects helping businesses bring their digital ideas to life.",
                        ),

                        const SizedBox(height: 20),
                        _buildSectionTitle("Professional Journey"),
                        _buildParagraph(
                          "• Bigbasket (2015–2020): Built and enhanced high-traffic modules like Custom Page Builder, Checkout, Slot Selection, and Payment Integration, serving millions of customers. Delivered scalable UI solutions using React, Redux, Angular, and jQuery, improving conversion rates and user experience.",
                        ),
                        _buildParagraph(
                          "• BestDoc (2021–2023): Led frontend development for Consult, Analytics, and Survey applications using Vue.js & Vuex, digitizing the patient journey for hospitals across India. Focused on usability, NDHM linking, payment gateways, and real-time feedback systems.",
                        ),
                        _buildParagraph(
                          "• Freelance Experience (2+ Years): Delivered tailor-made web solutions for startups and SMEs, using React, Next.js, and Node.js to create fast, modern, responsive SPAs.",
                        ),

                        const SizedBox(height: 20),
                        _buildSectionTitle("Technical Expertise"),
                        _buildParagraph(
                          "Frontend: React, Redux, Next.js, Vue.js, Nuxt.js, Angular, Styled Components, SASS, Motion Design\n"
                          "Backend: Node.js, Express, REST APIs\n"
                          "DevOps: GitHub/GitLab CI/CD, Docker, Nginx, Cloudflare\n"
                          "Other Skills: UI/UX Architecture, Micro-interactions, Performance Optimization, Responsive Design",
                        ),

                        const SizedBox(height: 20),
                        _buildSectionTitle("Current Focus"),
                        _buildParagraph(
                          "I am currently architecting and developing a full-stack e-commerce platform with advanced features including personalized homepages, dynamic cart & checkout with Razorpay integration, admin dashboard with analytics, inventory management, and live chat support – all built with modern Flutter and Riverpod v3 for state management.",
                        ),

                        const SizedBox(height: 20),
                        _buildSectionTitle("Why Work With Me"),
                        _buildParagraph(
                          "With a proven track record in building products that serve millions of users, I bring technical depth, product thinking, and a passion for clean, performant code. I thrive in collaborating with visionary clients to transform concepts into reality, ensuring every line of code moves their business forward.",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white70,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
