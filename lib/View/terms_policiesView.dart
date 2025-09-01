import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../common_widgets/mobile/mob_stats_widget.dart';
import '../common_widgets/web/footer_widget.dart';
import '../common_widgets/web/header_widget.dart';
import '../common_widgets/web/stats_widget.dart';
import '../services/domain_name.dart';
import '../utils/constants.dart';
import '../utils/normal_text_style.dart';
import '../utils/responsive_layout_widget.dart';

class TermsPoliciesview extends StatelessWidget {
  const TermsPoliciesview({super.key});

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

  Widget _buildMobileContent(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          // spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(title: "Terms and Policies"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 7,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Introduction",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    "Welcome to ${Constants.siteName}. By accessing or using our website, you agree to comply with these terms and policies. If you do not agree, please stop using the site. The terms ‘we’, ‘us’, or ‘our’ refer to ${Constants.siteName}, and ‘you’ refers to the user of the website.",
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "2. Use of the Website",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''You may use the website to search for jobs, post job listings, or explore career resources. You agree not to:
      
      -> Use the site for any unlawful purposes.
      -> Post false, offensive, or misleading content.
      -> Interfere with the site’s functionality or security.
      We reserve the right to remove any content or restrict access at our discretion.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "3. Account Responsibility",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''If you create an account, you are responsible for maintaining the confidentiality of your login details. Any activities under your account are your responsibility. Notify us immediately of any unauthorized access.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "4. Job Postings and Applications",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''-> Employers are responsible for the accuracy of job postings.
      -> We do not guarantee the authenticity of job listings or applicants.
      -> Users must exercise caution when applying for jobs or sharing personal information.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "5. Intellectual Property",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''All content on the website, including text, images, and software, is owned by ${Constants.siteName} or its licensors. Unauthorized copying or use is prohibited.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "6. Third-Party Links",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''Our site may contain links to third-party websites. We are not responsible for the content, accuracy, or practices of external websites.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "7. Liability Disclaimer",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''We are not liable for any losses, damages, or issues arising from your use of the website, including reliance on job listings or technical issues.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                  Text(
                    "8. Changes to Terms",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: kTextblackColor),
                  ),
                  Text(
                    '''We may update these terms at any time. Your continued use of the website indicates acceptance of any changes.''',
                    style: NormalTextStyle.customStyle(
                        fontSize: 14.sp, color: kTextLightColor),
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
                  "${Constants.siteName} Site Stats",
                  style: NormalTextStyle.customStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: kTextblackColor),
                )),
            MobStatsWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // spacing: 7,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(title: "Terms and Policies"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 7,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1. Introduction",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  "Welcome to ${Constants.siteName}. By accessing or using our website, you agree to comply with these terms and policies. If you do not agree, please stop using the site. The terms ‘we’, ‘us’, or ‘our’ refer to ${Constants.siteName}, and ‘you’ refers to the user of the website.",
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "2. Use of the Website",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''You may use the website to search for jobs, post job listings, or explore career resources. You agree not to:

-> Use the site for any unlawful purposes.
-> Post false, offensive, or misleading content.
-> Interfere with the site’s functionality or security.
We reserve the right to remove any content or restrict access at our discretion.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "3. Account Responsibility",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''If you create an account, you are responsible for maintaining the confidentiality of your login details. Any activities under your account are your responsibility. Notify us immediately of any unauthorized access.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "4. Job Postings and Applications",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''-> Employers are responsible for the accuracy of job postings.
-> We do not guarantee the authenticity of job listings or applicants.
-> Users must exercise caution when applying for jobs or sharing personal information.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "5. Intellectual Property",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''All content on the website, including text, images, and software, is owned by ${Constants.siteName} or its licensors. Unauthorized copying or use is prohibited.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "6. Third-Party Links",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''Our site may contain links to third-party websites. We are not responsible for the content, accuracy, or practices of external websites.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "7. Liability Disclaimer",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''We are not liable for any losses, damages, or issues arising from your use of the website, including reliance on job listings or technical issues.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
                Text(
                  "8. Changes to Terms",
                  style: NormalTextStyle.customStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: kTextblackColor),
                ),
                Text(
                  '''We may update these terms at any time. Your continued use of the website indicates acceptance of any changes.''',
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp, color: kTextLightColor),
                ),
              ],
            ),
          ),
          Center(
              child: Text(
            "${Constants.siteName} Site Stats",
            style: NormalTextStyle.customStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: kTextblackColor),
          )),
          StatsWidget(),
          FooterWidget(),
        ],
      ),
    );
  }


}
