import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';

class StatsWidget extends StatefulWidget {
  const StatsWidget({super.key});

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 20.w,
          decoration: BoxDecoration(
              color: kwhiteContainer,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("523",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold, fontSize: 20.sp,color: kSecondaryColor),),
                Text("Jobs Posted",style: NormalTextStyle.customStyle(fontSize: 15.sp,color: kTextLightColor),)
              ],
            ),
          ),
        ),
        Container(
          width: 20.w,
          decoration: BoxDecoration(
              color: kwhiteContainer,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("645",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold, fontSize: 20.sp,color: kSecondaryColor),),
                Text("Jobs Filled",style: NormalTextStyle.customStyle(fontSize: 15.sp,color: kTextLightColor),)
              ],
            ),
          ),
        ),
        Container(
          width: 20.w,
          decoration: BoxDecoration(
              color: kwhiteContainer,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("876",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold, fontSize: 20.sp,color: kSecondaryColor),),
                Text("Companies",style: NormalTextStyle.customStyle(fontSize: 15.sp,color: kTextLightColor),)
              ],
            ),
          ),
        ),
        Container(
          width: 20.w,
          decoration: BoxDecoration(
              color: kwhiteContainer,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("653",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold, fontSize: 20.sp,color: kSecondaryColor),),
                Text("Members",style: NormalTextStyle.customStyle(fontSize: 15.sp,color: kTextLightColor),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
