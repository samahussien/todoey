import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 final bool? checkbox ;
  final String text;
final Function(bool?) checkState;
 final VoidCallback longPress;
  const TaskTile({
    Key? key,
    required this.text, required this.checkState,this.checkbox= false, required this.longPress

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
      text,
        style: TextStyle(
            fontSize: 20,
            decoration:
            checkbox!? TextDecoration.lineThrough : TextDecoration.none),
      ),
      onLongPress:longPress,
      trailing: Checkbox(
        value: checkbox,
        activeColor: Colors.lightBlueAccent,
        onChanged:checkState

      ),
    );
  }
}



