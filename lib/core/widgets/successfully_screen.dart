

import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../constants/app_globals.dart';

class SuccessfullScreen extends StatelessWidget {

  final String title;

  final String subtitle;

  final String message;

  const SuccessfullScreen({Key? key, required this.title, required this.subtitle, required this.message}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   var mode = MediaQuery.of(context).orientation; 
   
    return Scaffold(
      body: Stack(
        
        
        children:[

CustomPaint(
size:const Size(double.infinity ,double.infinity ) ,
 painter: profil(),

 ),
Align(
  alignment: Alignment(0,mode==Orientation.portrait? -0.75:-1.5),
  child:   CustomPaint(
            size: Size(200, 200), // Set the size of the canvas
            painter: MyCirclePainter(Offset(100, 100),Offset(150, 100)), // Define the center and point on circumference
          ),
),



Align(
  alignment:  Alignment(mode==Orientation.portrait?0.1:0.05,mode==Orientation.portrait? -0.66:-1.03),
  child:   Icon(Icons.check  ,color: whiteColor, size: 100,),
),

  Align(
  alignment:  Alignment(0,-0.30),
  child:  Text("Your account has been created",style: buttonTextDarkBgStyle,),
),

  Align(
  alignment:  Alignment(0,0.1),
  child:  Text(title,style: textStyle2Black,),
),

  Align(
  alignment:  Alignment(0,0.3),
  child:  Text(subtitle,style: textStyle3DarkGrey,),
),

  Align(
  alignment:  Alignment(0,0.5),
  child:  Text(message,style: textStyle4DarkGrey,),
),


  Container(
    child: Align(
      alignment:  Alignment(0,mode==Orientation.portrait?0.8:01),
      child: Image.asset('assets/images/logo_in_app.png',height: 100,width: 100,),
    ),
  ),

 
  Align(
  alignment:  Alignment(0.8,0.9),
  child:  Container(
    height: 60,
width: 60,
    decoration: BoxDecoration(
    color: whiteColor,
       shape: BoxShape.circle,
  
    boxShadow: [

 BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 10, 
                              color: greyColor,
                              ),


    ]
    
    
    ),
    
    child: IconButton(icon:Icon( Icons.close_rounded, size: 40,color:blackColor),onPressed: (){}),
    )
),
      ]),
    );
  }
}


class profil extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

 Paint paint = Paint();


    Path path = Path();
    paint.color = secondaryColor;
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height *0.40);

path.quadraticBezierTo(size.width *0.5, size.height *0.50, 0, size.height *0.40);// ترتيب النقط حسب النقطة يلي وصلتلا من النقطة السباقة وميزتا هل تابع انو بعمل امالة ما برسم سيوي
     
      path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);}
   @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  }

class MyCirclePainter extends CustomPainter {
  final Offset center;
  final Offset pointOnCircumference;

  MyCirclePainter(this.center, this.pointOnCircumference);

  @override
  void paint(Canvas canvas, Size size) {
    final radius = calculateDistance(center, pointOnCircumference);
    final startAngle = atan2(pointOnCircumference.dy - center.dy, pointOnCircumference.dx - center.dx);
    final sweepAngle = pi * 1.65; // Example: This will create a missing section of 90 degrees (a quarter of the circle)

    final paint = Paint()
      ..color = whiteColor// Set the color of the circle
      ..style = PaintingStyle.stroke
    ..strokeWidth = 7.0; // Set the stroke width

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

  




double calculateDistance(Offset a, Offset b) {
  final dx = a.dx - b.dx;
  final dy = a.dy - b.dy;
  return sqrt(dx * dx + dy * dy);}
