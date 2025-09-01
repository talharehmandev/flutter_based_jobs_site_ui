import 'package:flutter/material.dart';
import 'package:my_job_site/common_widgets/web/footer_widget.dart';
import 'package:my_job_site/common_widgets/web/header_widget.dart';
import 'package:my_job_site/common_widgets/web/how_it_works.dart';
import 'package:my_job_site/services/domain_name.dart';
import 'package:my_job_site/utils/constants.dart';
import 'package:my_job_site/utils/normal_text_style.dart';
import 'package:sizer/sizer.dart';
import '../common_widgets/mobile/how_works_mob.dart';
import '../utils/assets.dart';
import '../utils/responsive_layout_widget.dart';

class AboutusView extends StatelessWidget {
  const AboutusView({super.key});

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
          spacing: 7,
          children: [
            HeaderWidget(title: "About ${Constants.siteName}"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '''Welcome to ${Constants.siteName}, your ultimate destination for connecting job seekers and employers. Whether you're taking your first steps in the professional world or looking to advance your career, we’re here to make the job search process seamless and efficient.
                        
                   At ${Constants.siteName} , we believe in empowering individuals and organizations by bridging the gap between talent and opportunity. Our platform offers:''',
                          style: TextStyle(fontSize: 15.sp, color: Colors.black),
                        ),
                      ),
                      Expanded(
                          child: Image.asset(
                            ImageAssets.aboutUs,
                            height: 25.h,
                          )),
                    ],
                  ),
                  SizedBox(height: 15,),
                  _buildSectionTitle('• Diverse Job Listings'),
                  Text(
                    '''From entry-level to executive roles, we feature opportunities across various industries and locations.''',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: kTextblackColor,
                    ),
                  ),
                  _buildSectionTitle('• User-Friendly Experience'),
                  Text(
                    '''Easy navigation and advanced filters help you find jobs that match your skills and aspirations.''',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  _buildSectionTitle('• Support for Employers'),
                  Text(
                    '''Businesses can find the right candidates by posting job listings and leveraging our wide-reaching platform.''',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  _buildSectionTitle('Our Mission'),
                  Text(
                    '''To create a trusted, accessible, and inclusive platform that simplifies job searching and hiring, making opportunities available to everyone.''',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  _buildSectionTitle('Our Vision'),
                  Text(
                    '''To be a leader in the job marketplace by continuously enhancing connections between employers and job seekers worldwide.''',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            HowItWorksWidget_Mob(),
            FooterWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 7,
        children: [
          HeaderWidget(title: "About ${Constants.siteName}"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '''Welcome to ${Constants.siteName}, your ultimate destination for connecting job seekers and employers. Whether you're taking your first steps in the professional world or looking to advance your career, we’re here to make the job search process seamless and efficient.
                      
                 At ${Constants.siteName} , we believe in empowering individuals and organizations by bridging the gap between talent and opportunity. Our platform offers:''',
                        style: TextStyle(fontSize: 15.sp, color: Colors.black),
                      ),
                    ),
                    Expanded(
                        child: Image.asset(
                      ImageAssets.aboutUs,
                      height: 25.h,
                    )),
                  ],
                ),
                SizedBox(height: 15,),
                _buildSectionTitle('• Diverse Job Listings'),
                Text(
                  '''From entry-level to executive roles, we feature opportunities across various industries and locations.''',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: kTextblackColor,
                  ),
                ),
                _buildSectionTitle('• User-Friendly Experience'),
                Text(
                  '''Easy navigation and advanced filters help you find jobs that match your skills and aspirations.''',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                _buildSectionTitle('• Support for Employers'),
                Text(
                  '''Businesses can find the right candidates by posting job listings and leveraging our wide-reaching platform.''',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                _buildSectionTitle('Our Mission'),
                Text(
                  '''To create a trusted, accessible, and inclusive platform that simplifies job searching and hiring, making opportunities available to everyone.''',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                _buildSectionTitle('Our Vision'),
                Text(
                  '''To be a leader in the job marketplace by continuously enhancing connections between employers and job seekers worldwide.''',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          HowItWorksWidget(),
          FooterWidget()
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: NormalTextStyle.customStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        color: kTextblackColor, // Adjust this color if you want
      ),
    );
  }
}