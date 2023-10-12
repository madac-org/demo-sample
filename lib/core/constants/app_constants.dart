import 'package:echo_cash/core/constants/app_globals.dart';
import 'package:flutter/material.dart';

// input decoration starts

InputDecoration customInputDecoration(String label,{isConnected = true}){
  return InputDecoration(
    labelText: label,
    labelStyle: inputLableStyle,
    errorStyle: textStyle1Red,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: secondaryColor.withOpacity(0.3))
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: secondaryColor.withOpacity(0.3))
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: secondaryColor.withOpacity(0.3))
    ),
    filled: true,
    fillColor: (isConnected) ? whiteColor : greyColor
  );
}

// input decoration ends


// Buttons Styles Starts

ButtonStyle skipAndBackButtonStyleWhiteBg(){
  return TextButton.styleFrom(
    backgroundColor: whiteColor,
    elevation: 0,
    minimumSize: const Size(50, 36),
  );
}

ButtonStyle buttonStyleWhiteBg(){
  return ElevatedButton.styleFrom(
    backgroundColor: whiteColor,
    elevation: 0.5,
    shadowColor: secondaryColor.withOpacity(0.25),
    minimumSize: const Size(double.infinity, 50),
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: secondaryColor),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

ButtonStyle buttonStyleDarkBg(){
  return ElevatedButton.styleFrom(
    elevation: 0.5,
    backgroundColor: secondaryColor,
    shadowColor: secondaryColor.withOpacity(0.25),
    minimumSize: const Size(double.infinity, 52), // full width and 50 height
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
  );
}

// Buttons Styles Ends

// Text Styles Starts

const headingStyle = TextStyle(
  fontSize: 20,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w700,
  color: secondaryColor
);

TextStyle descriptionStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w400,
  color: secondaryColor.withOpacity(0.5)
);

const textStyle1DarkGrey = TextStyle(
  fontSize: 16,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w400,
  color: darkGreyColor
);

const textStyle1Black = TextStyle(
  fontSize: 12,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w700,
  color: blackColor
);

const textStyle1Secondary = TextStyle(
  fontSize: 16,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w600,
  color: primaryColor
);

const textStyle1Red = TextStyle(
  fontSize: 12,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w700,
  color: redColor
);

const textStyle2Black = TextStyle(
  fontFamily: 'Lato',  
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: blackColor
);

const textStyle3Black = TextStyle(
  fontFamily: 'Lato',  
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: blackColor
);

const textStyle2DarkGrey = TextStyle(
  fontFamily: 'Lato',  
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: darkGreyColor
);

const textStyle3DarkGrey = TextStyle(
  fontFamily: 'Lato',  
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: darkGreyColor
);
const textStyle4DarkGrey = TextStyle(
  fontFamily: 'Lato',  
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: greyColor
);

const buttonTextDarkBgStyle = TextStyle(
  fontFamily: 'Lato-Regular',
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: whiteColor
);

const buttonTextWhiteBgStyle = TextStyle(
  fontFamily: 'Lato-Regular',
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: secondaryColor
);

const backAndSkipButtonTextWhiteBgStyle = TextStyle(
  fontFamily: 'Lato-Regular',
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: secondaryColor
);


TextStyle inputLableStyle = TextStyle(
  fontFamily: 'Lato',
  fontSize: 16,
  fontWeight: FontWeight.w300,
  color: secondaryColor.withOpacity(0.3)
);
// Text Styles Ends
