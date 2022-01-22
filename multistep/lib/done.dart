import 'package:flutter/material.dart';

class done extends StatelessWidget {
  const done({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(Icons.task_alt,
      size: 100.0,
      color: Colors.green,
      ),
    );
  }
}