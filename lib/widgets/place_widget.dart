import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlaceWidget extends StatefulWidget {
  PlaceWidget({Key? key}) : super(key: key);

  @override
  State<PlaceWidget> createState() => _PlaceWidgetState();
}

class _PlaceWidgetState extends State<PlaceWidget> {
  String initalValue = "Moscow 32,qw";
  var items = ["Moscow 32,qw", "Russia 32,qw", "Washington DC"];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      height: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.green,
            size: 20,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton(
                value: initalValue,
                items: items.map((e) {
                  return DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                        style: AppTextStyle.smallBodyText(),
                      ));
                }).toList(),
                onChanged: (v) {
                  initalValue = v.toString();
                  setState(() {});
                }),
          ),
        ],
      ),
    );
  }
}
