import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    double result = 0;

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
              result.toString(),
              style: TextStyle(
                color: Color.fromARGB(255, 120, 0, 0),
                fontSize: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controller,
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
            GestureDetector(
              onTap: () {
                result = double.parse(controller.text) * 81;
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 120, 0, 0),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                height: 58,
                child: Center(
                  child: Text(
                    'Convert',
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 231, 190),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
