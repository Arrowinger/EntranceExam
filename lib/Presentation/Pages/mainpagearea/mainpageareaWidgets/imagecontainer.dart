import 'package:entrancexam_v1/Data/Models/questionsOptionsModel.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final Questions imageUrl;
  const ImageContainer({Key key,@required this.imageUrl}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(seconds:1),
      padding: const EdgeInsets.only(bottom:1.0),
      child: Container(
       //height: 500.0,
        width: MediaQuery.of(context).size.width * 0.75,
        margin:const EdgeInsets.only(left: 70,bottom: 10,right: 5),
         decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )
        ),
        child: Image.network(imageUrl.quesImage,
            fit: BoxFit.fill,
        
        ),
      ),
    );
  }
}