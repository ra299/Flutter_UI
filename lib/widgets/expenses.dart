import 'package:flutter/material.dart';
import 'package:flutter_app_ui/data.dart';
import 'package:flutter_app_ui/piechart/piechart.dart';

class ExpansesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text("Expenses", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          )),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses.map((value) => Row(
                      children: [
                        CircleAvatar(
                          radius: 5, backgroundColor: pieColors[expenses.indexOf(value)],
                        ),
                        SizedBox(width: 5),
                        Text(value["name"], style: TextStyle(
                          fontSize: 14
                        ))
                      ]
                    )).toList(),
                  ),
                )),
            Expanded(
              flex: 6,
                child: PieChart()
            )
          ],
        ),
      ],
    );
  }
}
