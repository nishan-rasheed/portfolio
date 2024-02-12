import 'package:flutter/material.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';

import '../../../constants/app_font_styles.dart';
import 'app_divider.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({Key? key, required this.title, required this.note}) : super(key: key);


   final String title;
   final String note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:30),
      child: Column(
        children: [
          CommonText(text: title,
                style: AppFonts.style40,),
                const AppDivider(),
                CommonText(text: note,
                style: AppFonts.style20,),
        ],
      ),
    );
  }
}