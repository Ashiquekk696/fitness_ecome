import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:fitness_ecome/widgets/shopping_cart_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarr extends StatefulWidget {
  const AppBarr({Key? key}) : super(key: key);

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30),
      //    color: Colors.blue,
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(width: 30),
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Text("HOME SHEFF", style: AppTextStyle.mediumTitle()),
          ),
          Spacer(),
          ShoppingCartButtonWidget()
        ],
      ),
    );
  }
}
