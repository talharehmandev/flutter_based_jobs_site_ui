import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';

class JoinUsWidget_Mob extends StatelessWidget {
  const JoinUsWidget_Mob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
     // height: 45.h,
      width: 100.w,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text("Join Us",style: NormalTextStyle.customStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Column(
              children: [
                Card(
                  color: kwhiteContainer,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'I am Recuiter',
                              style: NormalTextStyle.customStyle(
                                  fontSize: 19.sp, color: kBlackicon),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 35.w, // Set desired width
                              height: 3.h, // Set desired height
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kSecondaryColor,
                                  foregroundColor: Colors.white,
                                  elevation: 5,
                                ),
                                child: Center(
                                  child: Text(
                                    "Post New Job",
                                    style: NormalTextStyle.customStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Text(
                          "I am a recruiter, posting job opportunities that align with your skills and help you take the next big step in your career.",
                          style: NormalTextStyle.customStyle(
                              fontSize: 14.sp, color: kBlackicon),
                        ),
                      ],
                    ),
                  ),
                ),
               // SizedBox(width: 20,),
                Card(
                  color: kPrimaryColor,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'I am Jobseeker',
                              style: NormalTextStyle.customStyle(
                                fontSize: 19.sp,
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 35.w, // Set desired width
                              height: 3.h, // Set desired height
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Browse Job",
                                    style: NormalTextStyle.customStyle(
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold,fontSize: 14.sp),
                                  )),
                            ),
                          ],
                        ),
                        Text(
                          "I am a jobseeker, ready to embrace new challenges and bring my skills to the right job that aligns with my goals.",
                          style: NormalTextStyle.customStyle(fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],)
          ],
        ),
      ),
    );
  }
}
