import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var w =  MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 10,
        color: Colors.transparent,
        shadowColor: Colors.green,
        child: Container(
          // margin:const EdgeInsets.symmetric(vertical: 10),
          width: w*.2,height: 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),),
      ),
    );
  }
}