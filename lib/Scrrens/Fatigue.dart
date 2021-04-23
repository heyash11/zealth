import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zealth/Scrrens/Vomiting.dart';

class Fatigue extends StatefulWidget {
  Fatigue({this.i});
  String i;

  @override
  _FatigueState createState() => _FatigueState();
}

class _FatigueState extends State<Fatigue> {
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
  void initState() {
    // TODO: implement initState
    print(widget.i);
    super.initState();
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
                      "More About Fatigue",
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
                                        "Able to do most activities",
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
                                        "In bed less than 50% of the day",
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
                                        "In bed more than 50% of the day",
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 110),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
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
                                ),
                                SizedBox(width: 10,),
                                widget.i=="both"?  Container(
                                    height:60,
                                    width: 180,
                                    child: ElevatedButton(
                                      child: Text("Next"),
                                      onPressed: () {
                                        print("Next");
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Vomiting(i: "both",)));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green,
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),

                                ):Container(
                                  height:60,
                                  width: 180,
                                  child: ElevatedButton(
                                    child: Text("Update"),
                                    onPressed: () => print(widget.i),
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
