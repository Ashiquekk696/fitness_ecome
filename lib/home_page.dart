import 'package:fitness_ecome/widgets/appbar_widget.dart';
import 'package:fitness_ecome/widgets/categories_widget.dart';
import 'package:fitness_ecome/widgets/orders_widget.dart';
import 'package:fitness_ecome/widgets/place_widget.dart';
import 'package:fitness_ecome/widgets/recepies_widget.dart';
import 'package:fitness_ecome/widgets/search_by_ingredients.dart';
import 'package:flutter/material.dart';

import 'widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

///
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBarr(), preferredSize: Size(double.infinity, 120)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: double.infinity,
          // color: Colors.green,
          child: Column(
            //crossAxisAlignment: ,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PlaceWidget(),
              SizedBox(
                height: 30,
              ),
              SearchBarWidget(),
              SizedBox(
                height: 30,
              ),
              CategeroiesWidget(),
              SizedBox(
                height: 30,
              ),
              OrdersWidget(),
              SizedBox(
                height: 30,
              ),
              RecepiesWidget(),
              SizedBox(
                height: 30,
              ),
              SearchByIngredeients(),
            ],
          ),
        ),
      ),
    );
  }
}
