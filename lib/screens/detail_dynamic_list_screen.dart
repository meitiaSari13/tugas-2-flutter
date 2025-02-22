import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailDynamicListScreen extends StatelessWidget {
  final String itemName;

  DetailDynamicListScreen({
    super.key,
    required this.itemName
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Text("Halaman Detail untuk ${itemName}"),
      ),
    );
  }
}