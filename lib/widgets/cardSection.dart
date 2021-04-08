import "package:flutter/material.dart";
import 'package:flutter_app_ui/data.dart';
import 'cardDetails.dart';

class CardSection extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text("Selected Card", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          )),
        ),
        Expanded(child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
            itemBuilder: (cntext,i){
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(
              color: primaryColor, 
              boxShadow: customShadow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                    top: 150,
                    bottom: -200,
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                            shape: BoxShape.circle, color: Colors.white38
                        )
                    )),
                Positioned.fill(
                    left: -300,
                    top: -100,
                    bottom: -100,
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: customShadow,
                            shape: BoxShape.circle, color: Colors.white38
                        ),
                    )),
                CardDetails()
              ],
            ),
          );
        }))
      ],
    );
  }
}
