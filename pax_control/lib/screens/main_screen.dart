import 'package:flutter/material.dart';
import 'package:pax_control/screens/pin_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
          child: Column(
            children: [
              Image.asset(
                "assets/images/air-logo.png",
                width: 240,
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                "PAX Control",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "АВИАИТ - информационные технологии aviait.ru",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black38),
              ),
              SizedBox(
                height: 38,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PinScreen()));
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.cyan),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Text("-= ВХОД =-"),
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
