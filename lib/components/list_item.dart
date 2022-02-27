import 'package:flutter/material.dart';
import 'package:flutter_lectur2_part2/components/color_manager.dart';

class ListItem extends StatelessWidget {

  final String content;


  const ListItem({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.verified_user,
            color: Theme.of(context).primaryColor,),
          const SizedBox(
            width: 10,
          ),
          Text(
            content,
            style: TextStyle(color: Theme.of(context).primaryColor),)
        ],
      ),
    );
  }
}
