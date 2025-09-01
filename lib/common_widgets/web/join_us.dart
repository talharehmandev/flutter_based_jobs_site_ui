import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';

class JoinUsWidget extends StatelessWidget {
  const JoinUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      height: 45.h,
      width: 100.w,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text("Join Us",style: NormalTextStyle.customStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
            Row(
              children: [
              Expanded(
                child: Card(
                  color: kwhiteContainer,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I am Recuiter',
                          style: NormalTextStyle.customStyle(
                              fontSize: 19.sp, color: kBlackicon),
                        ),

                        Text(
                          "I am a recruiter, posting job opportunities that align with your skills and help you take the next big step in your career.",
                          style: NormalTextStyle.customStyle(
                              fontSize: 14.sp, color: kBlackicon),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kSecondaryColor,
                                foregroundColor: Colors.white,
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              child: Text(
                                "Post New Job",
                                style: NormalTextStyle.customStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Card(
                  color: kPrimaryColor,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I am Jobseeker',
                          style: NormalTextStyle.customStyle(
                            fontSize: 19.sp,
                          ),
                        ),
                        Text(
                          "I am a jobseeker, ready to embrace new challenges and bring my skills to the right job that aligns with my goals.",
                          style: NormalTextStyle.customStyle(fontSize: 14.sp),
                        ),
                                              Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Browse Job",
                                  style: NormalTextStyle.customStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )
                      ],
                    ),
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
