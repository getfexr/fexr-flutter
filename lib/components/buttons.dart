import 'package:flutter/material.dart';

class FexrButtons {
  Color bgColor = Color(0xff222d52);
  Color titleColor = Color(0xffa7f87c);
  Color textColor = Color(0xffcedef3);

  Widget verified() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 55.0,
          width: 240.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: bgColor),
          child: GestureDetector(
            onTap: () {
              //ADD THE FUNCTIONS OF THIS BUTTON HERE
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Verified by Fexr',
                        style: TextStyle(color: titleColor, fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Tap for more info',
                        style: TextStyle(color: textColor, fontSize: 9.0),
                      ),
                    ],
                  ),
                  new Image.asset("lib/utils/logo_noname.png",
                      package: 'fexr', height: 50, fit: BoxFit.contain),
                ],
                )
          ),
        ),
      ),
    );
  }

  Widget pay(double amount) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 55.0,
          width: 240.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: bgColor),
          child: GestureDetector(
              onTap: () {
                //ADD THE FUNCTIONS OF THIS BUTTON HERE
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pay Fexr',
                        style: TextStyle(color: titleColor, fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Pay $amount from your wallet',
                        style: TextStyle(color: textColor, fontSize: 9.0),
                      ),
                    ],
                  ),
                  new Image.asset("lib/utils/logo_noname.png",
                      package: 'fexr', height: 50, fit: BoxFit.contain),
                ],
              )),
        ),
      ),
    );
  }
  Widget partner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 55.0,
          width: 240.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: bgColor),
          child: GestureDetector(
              onTap: () {
                //ADD THE FUNCTIONS OF THIS BUTTON HERE
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Partnered with Fexr',
                        style: TextStyle(color: titleColor, fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Tap for more info',
                        style: TextStyle(color: textColor, fontSize: 9.0),
                      ),
                    ],
                  ),
                  new Image.asset("lib/utils/logo_noname.png",
                      package: 'fexr', height: 50, fit: BoxFit.contain),
                ],
              )),
        ),
      ),
    );
  }
  Widget paid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 55.0,
          width: 240.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: bgColor),
          child: GestureDetector(
              onTap: () {
                //ADD THE FUNCTIONS OF THIS BUTTON HERE
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Paid via Fexr',
                        style: TextStyle(color: titleColor, fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Blockchain P2P payment',
                        style: TextStyle(color: textColor, fontSize: 9.0),
                      ),
                    ],
                  ),
                  new Image.asset("lib/utils/logo_noname.png",
                      package: 'fexr', height: 50, fit: BoxFit.contain),
                ],
              )),
        ),
      ),
    );
  }
  Widget signIn(String appName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 55.0,
          width: 240.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: bgColor),
          child: GestureDetector(
              onTap: () {
                //ADD THE FUNCTIONS OF THIS BUTTON HERE
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign-in Fexr',
                        style: TextStyle(color: titleColor, fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Authenticate $appName with Fexr',
                        style: TextStyle(color: textColor, fontSize: 9.0),
                      ),
                    ],
                  ),
                  new Image.asset("lib/utils/logo_noname.png",
                      package: 'fexr', height: 50, fit: BoxFit.contain),
                ],
              )),
        ),
      ),
    );
  }
}
