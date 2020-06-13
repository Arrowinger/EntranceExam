
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String optionNumber,options;
  
  const Options({Key key,@required this.optionNumber,@required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
     // duration: Duration(seconds:1),
     // height: bodySize * height * 0.1,
     // width: bodySize * width * 0.2,
      child: Container(
       margin: const EdgeInsets.all(20),
       decoration: BoxDecoration(
         border: Border.all(),
         borderRadius: BorderRadius.circular(10),
        //  boxShadow: [
        //    BoxShadow(
        //      color: Colors.black,
        //      blurRadius: 25.0,
        //      spreadRadius: 5.0,
        //      offset: Offset(15,15)
        //    )
        //  ]
       ),
       
        child: ListTile(
            
            leading:   Text(optionNumber,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ) 
            
            ),
             title:  Text(options,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                    ),
             )
            
          ),
        ),
    );
  }
}