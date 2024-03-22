import 'package:flutter/material.dart';
import 'package:invoice_generator/screens/edit.dart';
import 'package:invoice_generator/screens/home.dart';
import 'package:invoice_generator/screens/pdf.dart';

void main()
{
  runApp(Billing());
}

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:
      {

         '/':(context) => HomeScreen(),
        '/Edinting':(context) => EditScreen(),
       '/pre' : (context) => PdfPreview(),
      },
    );
  }
}
