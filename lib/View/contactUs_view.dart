import 'package:flutter/material.dart';
import 'package:my_job_site/common_widgets/web/stats_widget.dart';
import 'package:my_job_site/utils/normal_text_style.dart';
import 'package:sizer/sizer.dart';
import '../common_widgets/mobile/mob_stats_widget.dart';
import '../common_widgets/web/footer_widget.dart';
import '../common_widgets/web/header_widget.dart';
import '../services/domain_name.dart';
import '../utils/assets.dart';
import '../utils/constants.dart';
import '../utils/responsive_layout_widget.dart';

class ContactusView extends StatelessWidget {
  ContactusView({super.key});

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _descriptionController = TextEditingController();

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
            HeaderWidget(title: "Contact Us"),
            Image.asset(
              ImageAssets.siteLogo,
              height: 12.h,
            ),
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
      
                  width: 100.w,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 20,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "We want to hear from you!",
                            style: NormalTextStyle.customStyle(
      
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: "Your Name",
                                hintText: "Enter your name here",
                                labelStyle: TextStyle(color: kTextblackColor),
                                // Active label color
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kSecondaryColor,
                                      width: 2), // Active border color
                                ),
                                fillColor: Colors.white,
                                filled: true, // Enable the background color
      
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: "Enter email address here",
                                labelText: "Email Address",
                                labelStyle: TextStyle(color: kTextblackColor),
                                // Active label color
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kSecondaryColor,
                                      width: 2), // Active border color
                                ),
                                fillColor: Colors.white,
                                filled: true, // Enable the background color
      
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _subjectController,
                        decoration: InputDecoration(
                          hintText: "Enter subject here",
                          labelText: "Subject",
                          labelStyle: TextStyle(color: kTextblackColor),
                          // Active label color
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kSecondaryColor,
                                width: 2), // Active border color
                          ),
                          fillColor: Colors.white,
                          filled: true, // Enable the background color
      
                        ),
                      ),
                      TextFormField(
      
                        controller: _descriptionController,
                        decoration: InputDecoration(
                          hintText: "Enter description here",
                          labelText: "Description",
                          labelStyle: TextStyle(color: kTextblackColor),
                          // Active label color
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kSecondaryColor,
                                width: 2), // Active border color
                          ),
                          fillColor: Colors.white,
                          filled: true, // Enable the background color
      
                        ),
                        maxLines: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  kSecondaryColor), // Active button color
                            ),
                            onPressed: () {
                              print("Name: ${_nameController.text}");
                              print("Email: ${_emailController.text}");
                              print("Subject: ${_subjectController.text}");
                              print(
                                  "Description: ${_descriptionController.text}");
                            },
                            child: Text(
                              "Submit",
                              style: NormalTextStyle.customStyle(
                                  color: kTextWhiteColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
                  "${Constants.siteName} Site Stats",
                  style: NormalTextStyle.customStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: kTextblackColor),
                )),
            MobStatsWidget(),
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
          HeaderWidget(title: "Contact Us"),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15)
                ),
               
                width: 100.w,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  spacing: 20,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We want to hear from you!",
                          style: NormalTextStyle.customStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: "Your Name",
                              hintText: "Enter your name here",
                              labelStyle: TextStyle(color: kTextblackColor),
                              // Active label color
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: kSecondaryColor,
                                    width: 2), // Active border color
                              ),
                              fillColor: Colors.white,
                              filled: true, // Enable the background color

                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: "Enter email address here",
                              labelText: "Email Address",
                              labelStyle: TextStyle(color: kTextblackColor),
                              // Active label color
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: kSecondaryColor,
                                    width: 2), // Active border color
                              ),
                              fillColor: Colors.white,
                              filled: true, // Enable the background color

                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _subjectController,
                      decoration: InputDecoration(
                        hintText: "Enter subject here",
                        labelText: "Subject",
                        labelStyle: TextStyle(color: kTextblackColor),
                        // Active label color
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2), // Active border color
                        ),
                        fillColor: Colors.white,
                        filled: true, // Enable the background color

                      ),
                    ),
                    TextFormField(

                      controller: _descriptionController,
                      decoration: InputDecoration(
                        hintText: "Enter description here",
                        labelText: "Description",
                        labelStyle: TextStyle(color: kTextblackColor),
                        // Active label color
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2), // Active border color
                        ),
                        fillColor: Colors.white,
                        filled: true, // Enable the background color

                      ),
                      maxLines: 6,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                kSecondaryColor), // Active button color
                          ),
                          onPressed: () {
                            print("Name: ${_nameController.text}");
                            print("Email: ${_emailController.text}");
                            print("Subject: ${_subjectController.text}");
                            print(
                                "Description: ${_descriptionController.text}");
                          },
                          child: Text(
                            "Submit",
                            style: NormalTextStyle.customStyle(
                                color: kTextWhiteColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
              child: Text(
            "${Constants.siteName} Site Stats",
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
