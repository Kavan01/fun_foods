import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 332,
                  // color: Colors.amberAccent,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(52)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/deliveryboy.png'),
                      )),
                ),
                SizedBox(
                  height: 38.0,
                ),
                const Text(
                  'Quick delivery at\n   your Doorstep',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 31.0,
                ),
                const Text(
                  'Nulla Lorem mollit cupidatat \nirure. Laborum magna nulla. ',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(
                  height: 84.0,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orangeAccent.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 18,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, right: 45, left: 45),
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "Barlow",
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   child: ButtonTheme(
                //     child: ElevatedButton(
                //       style: ButtonStyle(
                //           backgroundColor:
                //               MaterialStateProperty.all(Colors.white),
                //           shape: MaterialStateProperty.all(
                //               RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(30.0)))),
                //       child: Padding(
                //         padding: EdgeInsets.only(top: 20,bottom: 20,right: 45,left: 45),
                //         child: Text('Get Started',
                //             style: TextStyle(
                //                 color: Colors.black,
                //                 fontFamily: 'Barlow',
                //                 fontWeight: FontWeight.w600,
                //                 fontSize: 20.0)),
                //       ),
                //       onPressed: () {},
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
