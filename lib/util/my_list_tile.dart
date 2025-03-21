import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String tileImagePath;
  final String tileText;
  final String subTileText;

  const MyListTile({super.key, required this.tileImagePath, required this.tileText, required this.subTileText});
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                //icon
                
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                    
                      ),
                      height: 80,
                      child: Image.asset(tileImagePath)),
            
                       SizedBox(width: 15,),
            
                       
                //column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tileText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 12,),
                    Text(subTileText,style: TextStyle(color: Colors.grey.shade700, fontSize: 16 ),),
                  ],//small- column children
                ),
                        
            
            
                  ],//end of grped row children
                ),
            
                 
                        
                 //arrow icon
                 Icon(Icons.arrow_forward_ios),
                        
                        
              ],//end of row children
            ),
          );
  }
}