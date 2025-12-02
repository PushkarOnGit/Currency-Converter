import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() => _CurrencyControllerPageState();
}

class _CurrencyControllerPageState extends State<CurrencyConverterPage> {
  final TextEditingController _controller = TextEditingController();
  num result = 0;
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 120, 0, 0), width: 3.0),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 235, 195),
      appBar: AppBar(
        title: Text(
          'Currency Converter',
          style: TextStyle(color: Color.fromARGB(255, 120, 0, 0), fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ANSWER
              Text(
                "$result",
                style: TextStyle(
                  color: Color.fromARGB(255, 120, 0, 0),
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(height: 20),

              // INPUT
              TextField(
                style: TextStyle(fontSize: 25),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter Amount in USD',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 120, 0, 0)),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                controller: _controller,
              ),
              SizedBox(height: 20),

              //BUTTON
              GestureDetector(
                onTap: () {
                  result = double.parse(_controller.text) * 81;
                  setState(() {});
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 120, 0, 0),
                  ),
                  child: Center(
                    child: Text(
                      'Convert',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 235, 195),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
