import 'package:flutter/material.dart';
import 'package:flutter_app_ui/widgets/cardSection.dart';
import 'package:flutter_app_ui/widgets/expenses.dart';
import 'package:flutter_app_ui/widgets/header.dart';

import 'data.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Circular"
      ),
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpansesSection())
        ]
      ),
    );
  }
}


// void main()=> runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Bank Expenses",
//       home: DashboardPage(),
//       theme: ThemeData(fontFamily: "Circular"),
//     );
//   }
// }