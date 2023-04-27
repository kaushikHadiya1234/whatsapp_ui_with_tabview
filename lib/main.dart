import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui_with_tabview/Screen/Provider/W_provider.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/Home_Screen.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/Splace.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WhatsappProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splace',
        routes: {
          '/':(context) => HomeScreen(),
          'splace':(context) => Splace()
        },
      ),
    ),
  );
}
