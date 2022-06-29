import 'package:flutter/material.dart';
import 'package:foodrecipes/screens/widgets/body.dart';
import 'package:foodrecipes/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Food Recipes'),
        actions: [
          CircleAvatar(
            backgroundColor: orange,
            child: IconButton(
              icon:
                  Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          SizedBox(width: gap / 2),
        ],
      ),
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
