import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String ButtonText;
  

  const MyButton({super.key, 
  required this.iconImagePath, required this.ButtonText});
  @override
  Widget build(BuildContext context) {
  return Column(
                children: [
                  Container(
                    
                    height: 95,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 40,
                         spreadRadius: 10
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Image.asset(iconImagePath)),
                    ),
                  ),
                  Text(ButtonText, style: TextStyle(fontSize: 16),)
                ],// end of column children
              );

  }
  
}