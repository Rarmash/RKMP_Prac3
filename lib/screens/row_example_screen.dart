import 'package:flutter/material.dart';
import 'final_screen.dart';

class RowExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 70, height: 70, color: Colors.black),
            Container(width: 70, height: 70, color: Colors.grey),
            Container(width: 70, height: 70, color: Colors.blueGrey),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => FinalScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
