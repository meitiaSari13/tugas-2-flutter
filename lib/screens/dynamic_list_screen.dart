import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meiapp/screens/detail_dynamic_list_screen.dart';

class DynamicListScreen extends StatelessWidget {
  const DynamicListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> data = ["Item 1", "Item 2", "Item 3"];

    return Scaffold(
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>DetailDynamicListScreen(
                            itemName: data[index],
                          )
                      )
                  );
                },
              );
            },
        )
        );
    }
}