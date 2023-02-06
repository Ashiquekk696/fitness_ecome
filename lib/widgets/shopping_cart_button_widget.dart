import 'package:flutter/material.dart';

class ShoppingCartButtonWidget extends StatefulWidget {
  @override
  State<ShoppingCartButtonWidget> createState() =>
      _ShoppingCartButtonWidgetState();
}

class _ShoppingCartButtonWidgetState extends State<ShoppingCartButtonWidget> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: <Widget>[
        Icon(
          Icons.shopping_cart,
          color: Colors.grey,
          size: 28,
        ),
        Container(
          child: Text(
            "9",
            style: TextStyle(fontSize: 7),
            textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          constraints: BoxConstraints(
              minWidth: 15, maxWidth: 15, minHeight: 15, maxHeight: 15),
        ),
      ],
    );
  }
}
