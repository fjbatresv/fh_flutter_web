import 'package:bases/ui/shared/custom_app_menu.dart';
import 'package:bases/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Contador Stateful',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: $counter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomFlatButton(
              label: 'Decrementar',
              onPressed: () {
                counter--;
                setState(() {});
              },
            ),
            CustomFlatButton(
              label: 'Incrementar',
              onPressed: () {
                counter++;
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
