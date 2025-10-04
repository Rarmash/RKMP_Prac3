import 'package:flutter/material.dart';
import 'row_example_screen.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Вы выбрали: $selected подкрылков',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selected++;
                });
              },
              child: Text('Добавить подкрылок'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RowExampleScreen()));
              },
              child: Text('Посмотреть варианты'),
            ),
          ],
        ),
      ),
    );
  }
}
