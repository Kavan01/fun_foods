import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class CustomAppBar extends StatelessWidget {



  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallback;
  CustomAppBar(this.leftIcon,this.rightIcon,{this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(35.0),
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
            child: GestureDetector(
              onTap: (){Navigator.of(context).pop();},
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(leftIcon),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.orangeAccent.withOpacity(0.2),
                    spreadRadius: 7,
                    blurRadius: 18,
                    offset: Offset(0, 4),
                  )
                ]
            ),
            child: Icon(rightIcon),
          )
        ],
      ),
    );
  }
}
