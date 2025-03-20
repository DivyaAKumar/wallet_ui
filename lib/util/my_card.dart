import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  final double balance;
  final int cardNumber; 
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color
    });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balance", style: TextStyle(fontSize: 16, color: Colors.white),),
                    SizedBox(height: 15,),
                    Text("\$"+ balance.toString(), style: TextStyle(fontSize: 30, color:Colors.white ,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(cardNumber.toString(), style: TextStyle(fontSize: 15, color: Colors.white),),
                        Text(expiryMonth.toString() + "/" + expiryYear.toString(), style: TextStyle(fontSize: 15, color: Colors.white),),
                      ],
                    )
                  ],
                ),
              )
            
            ),
    );
  }
  
}