import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return AnimatedContainer(
      duration: Duration(seconds:1),
      height: 60.0,
      decoration: BoxDecoration(
          color: Colors.green.shade700,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)
          ),

      ),
      
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
          children: <Widget>[
             textNav(context, 'LOGO', 20),
             textNav(context, 'Entrance Exam',35,),
             Row(
               
               children: <Widget>[
                 textNav(context, 'Kumar Pratyush', 20),
                 SizedBox(width:5),
                  CircleAvatar(
                    
                     backgroundColor: Colors.green.shade900,
                     radius: 35,
                      
                    //   child  : Image.network('https://i.pinimg.com/originals/ef/1b/bb/ef1bbbf6dff0c90864d83b252ac689c0.jpg',
                    //     fit: BoxFit.scaleDown,
                    //  ),
                   ),
                 
               ],
             ),
            

            
             
          ],
        ),
      );
                          
                        
                  
    
  }
  Widget  textNav(BuildContext context, String text, double size){
    return Text(text,
      style: TextStyle(
        fontSize: size, 
        fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
  }
}