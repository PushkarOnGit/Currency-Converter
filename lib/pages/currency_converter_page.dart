import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  final TextEditingController controller = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result =
          double.tryParse(controller.text) != null
              ? double.parse(controller.text) * 81
              : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        width: 3,
        color: Color.fromARGB(255, 120, 0, 0),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 48, 73),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 251, 231, 190),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(
                color: Color.fromARGB(255, 120, 0, 0),
                fontSize: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controller,
                style: TextStyle(color: Colors.green[800], fontSize: 20),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
                decoration: InputDecoration(
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: const Icon(Icons.attach_money),
                  prefixIconColor: Colors.green[800],
                  hintText: 'Enter Amount in USD',
                ),
              ),
            ),
            GestureDetector(
              onTap: convert,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 120, 0, 0),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                height: 58,
                child: const Center(
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
