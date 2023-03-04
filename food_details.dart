import 'package:flutter/material.dart';
import 'package:fun_foods/custom_appbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(Icons.arrow_back_outlined,
                            Icons.bookmark_outline_outlined),
                        SizedBox(height: 30),
                        Center(
                            child: Column(children: [
                          Image.asset('assets/images/food1.png'),
                          Text(
                            snapshot.data![index]['name'],
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2),
                          ),
                        ])),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.star_border_rounded,
                                  size: 35, color: Colors.orangeAccent),
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.access_time_outlined,
                                  size: 30, color: Colors.grey),
                            ),
                            Text('50min',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ))
                          ],
                        ),
                        SizedBox(height: 60),
                        Text(
                          snapshot.data![index]['para'],
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2),
                        ),
                        SizedBox(height: 100),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 20, right: 45, left: 45),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$ 30.00        CHECKOUT",
                                      textAlign: TextAlign.left,

                                      style: TextStyle(
                                        fontFamily: "Barlow",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20),
                                      child: Icon(Icons.double_arrow_outlined,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 1,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: callFoodApi(),
      ),
    );
  }

  Future<List<dynamic>> callFoodApi() async {
    http.Response res = await http.get(
        Uri.parse('https://63fa178c473885d837d84913.mockapi.io/fun_foods'));
    List<dynamic> map = jsonDecode(res.body.toString());
    return map;
  }
}
