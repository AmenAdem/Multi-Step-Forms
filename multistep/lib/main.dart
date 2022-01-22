import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'home2.dart';
import 'done.dart';

void main()
{
runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static TextTheme lightTextTheme = TextTheme(

  // FONT 1 
 bodyText1: GoogleFonts.openSans(
 fontSize: 14.0,
 fontWeight: FontWeight.w700,
 color:Colors.green
 ),);
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.greenAccent[400],
          textSelectionTheme:
          const TextSelectionThemeData(selectionColor:Colors.green),),
               title:'Sign In',
               home:home2(),);
  }
}