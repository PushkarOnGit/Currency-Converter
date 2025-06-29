import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 120, 0, 0)),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Currency Converter',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 48, 73),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 251, 231, 190),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "00",
              style: TextStyle(
                color: Color.fromARGB(255, 120, 0, 0),
                fontSize: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(color: Colors.green[800], fontSize: 20),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
                decoration: InputDecoration(
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: Icon(Icons.attach_money),
                  prefixIconColor: Colors.green[800],
                  hintText: 'Enter Amount in USD',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
