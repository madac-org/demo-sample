import 'package:echo_cash/core/constants/app_globals.dart';
import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class LoggedInCustomDrawer extends StatefulWidget {
 

  @override
  State<LoggedInCustomDrawer> createState() => _LoggedInCustomDrawerState();
}

class _LoggedInCustomDrawerState extends State<LoggedInCustomDrawer> {

List<drawer_model> list1 =[];
List<drawer_model> list2 =[];
List<drawer_model> list3 =[];
int i = 0;
bool value1 = false;
bool value2 = false;





void import_value(){

list1 = [

drawer_model(Row(
  children: [
    SizedBox(width:32 ,),
    Icon(Icons.house,color: darkGreyColor,),
    SizedBox(width:10 ,),
    Text("Home",style: backAndSkipButtonTextWhiteBgStyle)]),(){}),

drawer_model(Row(children: [
      SizedBox(width:32 ,),
  Icon(Icons.wallet,color: darkGreyColor),
   SizedBox(width:10 ,),
  Text("wallets",style: backAndSkipButtonTextWhiteBgStyle,)],),(){}),

drawer_model(Row(children: [
    SizedBox(width:32 ,),
  Icon(Icons.person,color: darkGreyColor),
     SizedBox(width:10 ,),
  Text("My profile",style: backAndSkipButtonTextWhiteBgStyle,)],),(){}),

drawer_model(Row(children: [
   SizedBox(width:32 ,),
  Icon(Icons.lock,color: darkGreyColor),
   SizedBox(width:10 ,),
  Text("Change PIN",style: backAndSkipButtonTextWhiteBgStyle,)],),(){}),

drawer_model(Row(children: [
     SizedBox(width:32 ,),
  Icon(Icons.notifications,color: darkGreyColor),
    SizedBox(width:10 ,),
  Text("Notifications",style: backAndSkipButtonTextWhiteBgStyle,)],),(){}),

drawer_model(Row(children: [
       SizedBox(width:32 ,),
  Icon(Icons.settings,color: darkGreyColor),
    SizedBox(width:10 ,),
  Text("Settings",style: backAndSkipButtonTextWhiteBgStyle,),
  SizedBox(width: 120,),
  Icon(Icons.arrow_forward_ios_outlined,size: 15,color: darkGreyColor,)
  ],),(){
setState(() {
 i =1;
});
}),
];

list2= [
drawer_model(Row(
  
    mainAxisAlignment: MainAxisAlignment.start,
  children: [SizedBox(width: 25,),
  Icon(Icons.arrow_back_ios,size: 15,color: darkGreyColor,),
  SizedBox(width: 15,),Text("Back",style: backAndSkipButtonTextWhiteBgStyle,),],),(){
setState(() {
 i=0;
});
}),
drawer_model(Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    SizedBox(width: 35,),
    Text("Allow Notification",style: backAndSkipButtonTextWhiteBgStyle,),
               SizedBox(width: 40,),
Container(
  height: 35,
  child:   Transform.scale(
    scale: 0.4,
    child:   Switch(
      activeColor: primaryColor,
      inactiveThumbColor: whiteColor,
         value: value1, onChanged: (va){
              setState(() {
                value1=va;
              }); 
              }),
  ),
)],),(){}),

drawer_model(Row(
    mainAxisAlignment: MainAxisAlignment.start,
  children: [
    SizedBox(width: 35,),
    Text("Dark Mode",style: backAndSkipButtonTextWhiteBgStyle,),
  SizedBox(width: 100,),
Container(
  height: 35,
  child:   Transform.scale(
    scale: 0.4,
    child:   Switch(
     
      activeTrackColor: primaryColor,
      inactiveThumbColor: whiteColor,
         value: value2, onChanged: (va){
              setState(() {
                value2=va;
              });
              
              
              }),
  ),
)],),(){}),

          drawer_model(Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  SizedBox(width: 35,),
              
              Text("English",style: backAndSkipButtonTextWhiteBgStyle,),
             SizedBox(width: 142,),
            
            Icon(Icons.arrow_drop_down_sharp,size: 35,color: darkGreyColor,),

            ],),(){}),

];


list3=[

drawer_model(Row(
  children: [SizedBox(width: 35,),
  Icon(Icons.logout,color: redColor,),
  SizedBox(width: 15,),Text("Logout",style: textStyle1Red,),],),(){}),



drawer_model( Divider(), (){}),

drawer_model(Row(
  children: [SizedBox(width: 35,),
  Icon(Icons.help,color: darkGreyColor,),
  SizedBox(width: 15,),Text("Help",style: backAndSkipButtonTextWhiteBgStyle,),],),(){}),

     



];



}

  @override
  Widget build(BuildContext context) {
  import_value();
  Size size =MediaQuery.of(context).size;
    return Drawer(

child: Container(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.start,
    
    children: [
  
  Container(
    height:size.height *0.25,
    color: secondaryColor,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  
  CircleAvatar(
  radius: 30,
  backgroundImage: NetworkImage(
  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                                  ),
                                ),
                                SizedBox(width: 20,),
  Column(mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Row(
   
      children: [ 
      Text("name" ,style: buttonTextDarkBgStyle,),
       SizedBox(width: 10,),
      Icon(Icons.verified_rounded ,color: primaryColor,)
      ],),
     SizedBox(height: 10,),
     Container(
      padding: EdgeInsets.all(5),
      
      decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Icon(Icons.circle, color: secondaryColor,),
      Text(" Account type",style: backAndSkipButtonTextWhiteBgStyle,)],),
      )
      
      
      
      ],)
  
  
  ],)
  ,),
  
  
  Container(
     height:size.height *0.52,
    
    child: 
   ListView.builder(
    itemCount: i==0?list1.length :list2.length,
    itemBuilder: (context, index){
   return Column(
    children: [
            GestureDetector(
        onTap:(){
      
          if(i==0){
 list1[index].function.call();

          }
        else  
       { list2[index].function.call();}
        
    
        } ,
        
        child:i==0? list1[index].widget:list2[index].widget,),
        Divider()
    ],
   );
   
   
   
   })
  ),
    Container(

    
     height:size.height *0.20,
    
    child: 
   ListView.builder(reverse: true,
    itemCount: list3.length,
    itemBuilder: (context, index){
   return Column(
    children: [
            GestureDetector(
        onTap:(){
      
 list3[index].function.call();
        
    
        } ,
        
        child:list3[index].widget,),
  
    ],
   );
   
   
   
   })
  ),
  
  
  
  ],),
),


    );
  }
}


class drawer_model{
late Widget widget ; 
late Function function;

  drawer_model(this.widget, this.function);




}
