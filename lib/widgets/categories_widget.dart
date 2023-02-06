import 'package:fitness_ecome/elements/colors.dart';
import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategeroiesWidget extends StatefulWidget {
  const CategeroiesWidget({Key? key}) : super(key: key);

  @override
  State<CategeroiesWidget> createState() => _CategeroiesWidgetState();
}

class _CategeroiesWidgetState extends State<CategeroiesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black87,
      height: 84,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                          child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          height: 45,
                          width: 45,
                          "assets/images/food1.jpg",
                          fit: BoxFit.contain,
                        ),
                      )),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "data",
                      style: AppTextStyle.smallBodyText(),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                )
              ],
            );
          }),
    );
  }
}
