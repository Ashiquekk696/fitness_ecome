import 'package:fitness_ecome/elements/colors.dart';
import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:fitness_ecome/widgets/price_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

////////////
////////////
////////////
////////////
class RecepiesWidget extends StatefulWidget {
  const RecepiesWidget({Key? key}) : super(key: key);

  @override
  State<RecepiesWidget> createState() => _RecepiesWidgetState();
}

class _RecepiesWidgetState extends State<RecepiesWidget> {
  List<Color> colors = [Colors.red, Colors.green, Colors.blue];
  List bb = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Best Recepies",
              style: AppTextStyle.mediumTitle(),
            ),
            Spacer(),
            Text(
              "View All",
              style: AppTextStyle.smallBodyText(color: AppColors.kGreenColor),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 185,
          child: ListView.builder(
              itemCount: 14,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //   for (int i =0;i<)
                return Row(
                  children: [
                    Container(
                      height: 185,
                      width: 230,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/food1.jpg",
                              ),
                              fit: BoxFit.fill),
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Center(
                                        child: Text(
                                      "10 - 20 km",
                                      style: AppTextStyle.smallBodyText(
                                          color: Colors.white),
                                    )),
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: AppColors.kGreenColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                  Container(
                                    child: Center(
                                        child: Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                    )),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              width: 100,
                              child: Text(
                                "Vegetarian Green Bowl",
                                style: AppTextStyle.mediumTitle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              Text(
                                "Servings",
                                style: AppTextStyle.smallBodyText(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Icon(
                                Icons.bolt,
                                color: Colors.white,
                              ),
                              Text(
                                "Bowl",
                                style: AppTextStyle.smallBodyText(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
