import 'package:flutter/material.dart';
import 'counter_screen.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Подкрылок – это пластиковая или металлическая деталь, '
                  'которая устанавливается в колесной арке автомобиля. '
                  'Он защищает кузов от грязи, камней и влаги.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CounterScreen()));
              },
              child: Text('Перейти к выбору подкрылков'),
            ),
          ],
        ),
      ),
    );
  }
}
