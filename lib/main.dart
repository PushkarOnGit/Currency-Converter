import 'pages/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
