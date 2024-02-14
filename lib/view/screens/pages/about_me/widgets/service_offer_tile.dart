
import 'package:flutter/material.dart';

import '../../../../../constants/app_font_styles.dart';
import '../../../widgets/common_text.dart';

class ServiceOfferTile extends StatelessWidget {
  const ServiceOfferTile({
    super.key, required this.text,
  });

  final String text;


  @override
  Widget build(BuildContext context) {
    var w =  MediaQuery.of(context).size.width;
    var h =  MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.orange,
      // height: w*.2,
      width: w*.2,
    //  height: 200s,
    //   width: 200,
      child: Column(
        children: [
          Icon(Icons.app_blocking),
          FittedBox(
            child: CommonText(text: text,
            style: AppFonts.style30,
            ),
          )
        ],
      ),
    );
  }
}