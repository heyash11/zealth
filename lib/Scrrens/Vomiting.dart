import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class Vomiting extends StatefulWidget {
  Vomiting({this.i});
  String i;
  @override
  _FatigueState createState() => _FatigueState();
}

class _FatigueState extends State<Vomiting> {
  String _radioValue; //Initial definition of radio button value
  String choice;
  TextEditingController controller;

  // ------ [add the next block] ------
  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'one':
          choice = value;
          break;
        case 'two':
          choice = value;
          break;
        case 'three':
          choice = value;
          break;
        default:
          choice = null;
      }
      debugPrint(choice); //Debug the choice in console
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text(
                "Symptoms",
                style: TextStyle(color: Colors.black),
              ),
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                    child: Text(
                      "More About Vomiting",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(0.0, 5.0),
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.0, -160.0),
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 'one',
                                      groupValue: _radioValue,
                                      onChanged: radioButtonChanges,
                                    ),
                                    Icon(Icons.attribution_outlined,color: Colors.yellow,),
                                    SizedBox(width: 6,),
                                    Text(
                                      "Vomiting once during a day",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 'two',
                                      groupValue: _radioValue,
                                      onChanged: radioButtonChanges,
                                    ),
                                    Icon(Icons.attribution_outlined,color: Colors.orangeAccent,),
                                    SizedBox(width: 6,),
                                    Text(
                                      "Vomiting 2-5 times during a day",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 'three',
                                      groupValue: _radioValue,
                                      onChanged: radioButtonChanges,
                                    ),
                                    Icon(Icons.attribution_outlined,color: Colors.red,),
                                    SizedBox(width: 6,),
                                    Text(
                                      "Vomiting 6 or more times during a day",
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ),

                    ],
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: Offset(0.0, -130.0),
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-80.0, -290.0),
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Any medication/Comments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),


                              ],
                            )
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-10.0, -270.0),
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new TextField(
                                  controller: controller,
                                  decoration: new InputDecoration(
                                      border: new OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: const BorderRadius.all(

                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      filled: true,
                                      hintStyle: new TextStyle(color: Colors.grey),
                                      hintText: "Comment",
                                      fillColor: Colors.white70),
                                )


                              ],
                            )
                        ),
                      ),

                    ],
                  ),

                ),



                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                widget.i=="both"?Container(
                                  height:60,
                                  width: 180,
                                  child: ElevatedButton(
                                    child: Text("Previous"),
                                    onPressed: () => Navigator.of(context).pop(),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.grey,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ):Container(),
                                SizedBox(width: 10,),
                                Container(
                                  height:60,
                                  width: 180,
                                  child: ElevatedButton(
                                    child: Text("Update"),
                                    onPressed: () async {
                                      Uri url;
                                      final response = await http.post(
                                        url,
                                        body: {"symptoms" : "1","user-id" : "123"},
                                      );
                                      final responseData = json.decode(response.body.toString());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            )
                        ),



                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
