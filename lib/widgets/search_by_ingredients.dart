import 'package:fitness_ecome/elements/colors.dart';
import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchByIngredeients extends StatefulWidget {
  const SearchByIngredeients({Key? key}) : super(key: key);

  @override
  State<SearchByIngredeients> createState() => _SearchByIngredeientsState();
}

class _SearchByIngredeientsState extends State<SearchByIngredeients> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search by ingredients",
          style: AppTextStyle.mediumTitle(),
        ),
        SizedBox(
          height: 15,
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1),
            itemBuilder: (context, index) {
              return Container(
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        height: 60,
                        "assets/images/food1.jpg",
                      ),
                    ),
                    Text(
                      "data",
                      style: AppTextStyle.smallBodyText(),
                    )
                  ],
                )),
                // height: 60,
                // width: 60,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              );
            }),
      ],
    );
  }
}
