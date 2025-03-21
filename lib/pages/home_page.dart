import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/util/my_button.dart';
import 'package:wallet_ui/util/my_card.dart';
import 'package:wallet_ui/util/my_list_tile.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller 
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(onPressed: () {
          
        },
        backgroundColor: Colors.deepPurple[300],
        
        shape: CircleBorder(),
        child: Icon(
          Icons.attach_money_outlined,
          color: Colors.white,size: 35,),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //home icon button
            IconButton(onPressed: () {
              
          }, icon: Icon(Icons.home,size: 50,color: Colors.deepPurple[300],)),

          //
          IconButton(onPressed: () {
              
          }, icon: Icon(Icons.settings,size: 50,color: Colors.grey[700],)),
          
          ],
        ),

      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //app bar
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //my cards
                Row(
                  children: [
                    Text('My', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text(' Cards', style: TextStyle(fontSize: 28),),
                  ],
                ),
                 

                 //plus icon
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.add),
                  )
                  )
                    
              ],//end of row children
            ),
          ),
          
          SizedBox(height: 25,),
        
          //cards
         
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.20,
                  cardNumber: 123456879,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                   balance: 5678.20,
                  cardNumber: 837275739,
                  expiryMonth: 7,
                  expiryYear: 25,
                  color: Colors.blue[300],
                ),
                MyCard(
                   balance: 7650.20,
                  cardNumber: 876568739,
                  expiryMonth: 10,
                  expiryYear: 34,
                  color: Colors.pink[300],
                ),
                
              ],
            ),
          ),

          SizedBox(height: 25,),

          //page scroll icon

          SmoothPageIndicator(
            controller: _controller, 
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800
            ),),

            SizedBox(height: 25,),
        
          //3 buttons -> send + pay + bills 
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //send button
                MyButton(iconImagePath: "lib/icons/send-money.png" , ButtonText: "Send"),
            
                //pay button
                MyButton(iconImagePath: "lib/icons/credit-card.png" , ButtonText: "Pay"),
            
            
                //bills button
                MyButton(iconImagePath: "lib/icons/bill.png" , ButtonText: "Bill")
            
            
              
              ],//end of row children
            ),
          ),
        
        SizedBox(height: 25,),
          //column of stats + transaction

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                //stats
                MyListTile(tileImagePath: "lib/icons/statistics.png", tileText: "Statistics", subTileText: "Payment and Income"),
                 //transaction
            MyListTile(tileImagePath: "lib/icons/transaction.png", tileText: "Transactions", subTileText: "Transaction History")
              ],
            ),
          ),
         
          


         ],//end of main column children
        ),
      ),

    );
  }
}