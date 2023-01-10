import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const/consts.dart';

class CustomDialogBox extends StatefulWidget {
  final String title;
  final  String descriptions;
  final String  ?  text;

  const CustomDialogBox({
    required this.title,
    required this.descriptions,
     this.text,
  });

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: Constants.padding,
              top: Constants.avatarRadius + Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, offset: Offset(0, 5), blurRadius: 5),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent.withOpacity(0.8)),


                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(


                              RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(20.0),

                              ))),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Noooo",
                        style: TextStyle(fontSize: 18),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.7)),


                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(


                                  RoundedRectangleBorder(

                                      borderRadius: BorderRadius.circular(18.0),

                                  ))),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Yesss",
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              )
            ],
          ),
        ),
        // Positioned(
        //   left: Constants.padding,
        //   right: Constants.padding,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     radius: Constants.avatarRadius,
        //     child: ClipRRect(
        //         borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
        //         child: Image.asset("assets/model.jpeg")
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
