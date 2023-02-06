import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "2345",
          style: AppTextStyle.smallBodyText(),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "\$",
          style: AppTextStyle.smallBodyText(),
        )
      ],
    );
  }
}
