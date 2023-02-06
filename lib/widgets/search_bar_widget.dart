import 'package:fitness_ecome/elements/colors.dart';
import 'package:fitness_ecome/elements/textstyled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.of(context).push(SearchModal());
      },
      child: Container(
        color: AppColors.primaryColor,
        padding: EdgeInsets.all(9),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 0),
              child: Icon(Icons.search, color: Theme.of(context).hintColor),
            ),
            Expanded(
              child: Text(
                "Search for items",
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.fade,
                style: AppTextStyle.mediumBodyText(),
                // style: Theme.of(context)
                //     .textTheme
                //     .caption
                //     .merge(TextStyle(fontSize: 12)),
              ),
            ),
            SizedBox(width: 8),
            InkWell(
              onTap: () {
                //      onClickFilter('e');
              },
              child: Container(
                padding: const EdgeInsets.only(
                    right: 10, left: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Theme.of(context).focusColor.withOpacity(0.1),
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4,
                  children: [
                    Icon(
                      Icons.tune,
                      color: Theme.of(context).hintColor,
                      size: 21,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
