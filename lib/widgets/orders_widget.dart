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
class OrdersWidget extends StatefulWidget {
  const OrdersWidget({Key? key}) : super(key: key);

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
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
              "Orders",
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
                      width: 130,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ClipRRect(

                              //   child: Image.asset(
                              //     "assets/images/food1.jpg",
                              //     width: 100,
                              //     height: 121,
                              //     fit: BoxFit.contain,
                              //   ),
                              // ),

                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  width: 100,
                                  height: 73,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/food1.jpg",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
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
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "data",
                                      style: AppTextStyle.smallBodyText(),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "200",
                                      style: AppTextStyle.mediumBodyText(
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        PriceWidget(),
                                        Container(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
