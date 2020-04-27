import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({
    Key key,
    @required this.starCount,
  }) : super(key: key);

  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Icon(
          Icons.star,
          color: Colors.deepOrange,
        ),
        const SizedBox(width: 5.0),
        Text("${starCount}"),
      ],
    );
  }
}
