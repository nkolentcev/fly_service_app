import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pax_control/screens/work_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            child: Text(
          "Введите пин (табельный номер)",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.cyan),
        )),
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: PinCodeTextField(
              key: UniqueKey(),
              appContext: context,
              controller: controller,
              length: 6,
              cursorHeight: 19,
              //enableActiveFill: true,
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                fieldWidth: 50,
                inactiveColor: Colors.grey,
                selectedColor: Colors.blue,
                activeFillColor: Colors.cyanAccent,
                selectedFillColor: Colors.cyan,
                //borderRadius: BorderRadius.circular(8),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                switch (value.length) {
                  case 6:
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkScreen(
                              key: UniqueKey(),
                              someData: "adv",
                            )));
                    return;
                  default:
                    return;
                }
              }),
        ),
      ],
    );
  }
}
