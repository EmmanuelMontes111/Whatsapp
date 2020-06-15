import 'package:flutter/material.dart';
import 'package:whatsapp/ui/pages/home_page.dart';


void main() => runApp(
      MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(18, 140, 126, 1.0),
          indicatorColor: Colors.white,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color.fromRGBO(37, 211, 102, 1.0),
          ),
        ),
      ),
    );
