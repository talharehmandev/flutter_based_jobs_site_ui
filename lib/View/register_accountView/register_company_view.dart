import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/web/footer_widget.dart';
import '../../common_widgets/web/header_widget.dart';
import '../../common_widgets/web/stats_widget.dart';
import '../../services/domain_name.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';
import '../../utils/responsive_layout_widget.dart';

class RegisterCompanyView extends StatefulWidget {
  const RegisterCompanyView({super.key});

  @override
  State<RegisterCompanyView> createState() => _RegisterCompanyViewState();
}

class _RegisterCompanyViewState extends State<RegisterCompanyView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteContainer,
      body: ResponsiveLayout(
        mobileBuilder: (context) => _buildMobileContent(context),
        desktopBuilder: (context) => _buildDesktopContent(context),
      ),
    );
  }

  ///
  Widget _buildMobileContent(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Mobile View: Home Screen',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Card 1',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('This is a mobile view card.'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 7,
        children: [
          HeaderWidget(title: "Create account to explore talent"),
          Center(
              child: Text(
                "${Constants.siteName} Stats",
                style: NormalTextStyle.customStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: kTextblackColor),
              )),
          StatsWidget(),
          FooterWidget()
        ],
      ),
    );
  }

}


//{
//   "companyName": "Google",
//   "logo": "path/to/logo.png",
//   "description": "Tech company focusing on AI and search.",
//   "industry": "IT",
//   "website": "https://www.google.com",
//   "size": "10,000+ employees",
//   "email": "hr@google.com",
//   "contactNumber": "+1-123-456-7890",
//   "headquarters": "Mountain View, CA, USA",
//   "locations": ["New York, USA", "London, UK"],
//   "postedJobs": [101, 102, 103],
//   "username": "google_hr",
//   "password": "encrypted_password",
//   "accountType": "Premium",
//   "creationDate": "2024-12-17T00:00:00Z",
//   "status": "Active",
//   "subscription": {
//     "planName": "Enterprise",
//     "startDate": "2024-01-01T00:00:00Z",
//     "endDate": "2025-01-01T00:00:00Z"
//   },
//   "adminUsers": [201, 202],
//   "permissions": ["post_jobs", "edit_profile", "view_analytics"]
// }