import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/section_title.dart';
import '../../../shared/widgets/info_card.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 900;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HERO
              Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Buying a Flat?\nCheck If You're a Serious Buyer",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text("✔ No Random Enquiries"),
                        const Text("✔ Budget & Timeline Verified"),
                        const Text("✔ Only Serious Buyers Get a Call"),
                        const SizedBox(height: 24),
                        PrimaryButton(
                          text: "Check Eligibility Now",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  Container(
                    height: 280,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text("Property Image")),
                  ),
                ],
              ),

              const SizedBox(height: 80),

              // HOW IT WORKS
              const Center(child: SectionTitle("How It Works")),
              const SizedBox(height: 32),

              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: const [
                  InfoCard(icon: Icons.list_alt, text: "Answer 5 Questions"),
                  InfoCard(icon: Icons.smart_toy, text: "AI Verifies Intent"),
                  InfoCard(icon: Icons.call, text: "Get Agent Call"),
                ],
              ),

              const SizedBox(height: 80),

              // IDEAL / NOT FOR
              Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ideal For",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 12),
                          Text("• Ready Buyers"),
                          Text("• Budget Decided"),
                          Text("• Site Visit Ready"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.lightRed,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Not For",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 12),
                          Text("• Just Browsing"),
                          Text("• Price Comparison"),
                          Text("• Time-Pass Enquiries"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 60),
              const Center(
                child: Text(
                  "Privacy Policy | Terms & Conditions\nWe are not a property seller or broker",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
