import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {

  final TextEditingController controller = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromRGBO(16, 61, 63, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'INR ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.numberWithOptions(
                  signed: false,
                  decimal: true,
                ),
                decoration: InputDecoration(
                  hintText: "Enter the Amount in USD",
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  prefixIcon: Icon(Icons.attach_money_sharp),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(controller.text) * 81;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                fixedSize: Size(390, 50),
              ),

              child: Text('Convert', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
