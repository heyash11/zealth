import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:smart_select/smart_select.dart';
import 'package:zealth/Scrrens/Fatigue.dart';
import 'package:zealth/Scrrens/Vomiting.dart';
import 'package:zealth/Utils/choices.dart' as choices;
import 'modal-screen.dart';

class MainScreen extends StatefulWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const MainScreen(
      {Key key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);
  @override
  _NoItemState createState() => _NoItemState();
}

class _NoItemState extends State<MainScreen> {
  List<String> _os = [];
  List<String> _hero = ['bat', 'spi'];
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:Center(child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: Text("Symptoms",style: TextStyle(color: Colors.black),),
        )),backgroundColor: Colors.white,elevation: 0, leading: IconButton(
          icon: Image.asset('assets/nav.jpg',),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),),
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
                      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                      child: Text("Search & Add Your Symptoms",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Container(
                      height: 65,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: Icon(Icons.search,size: 30,)),
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width/2,
                            child:       SmartSelect<String>.multiple(
                              title: 'Search Symptoms',

                              //selectedValue: _os,
                              onChange: (selected) => setState(() => _os = selected.value),
                              choiceItems: choices.os,
                              modalType: S2ModalType.bottomSheet,
                              tileBuilder: (context, state) {
                                return S2Tile.fromState(
                                  state,
                                  isTwoLine: true,

                                );
                              }, value: [_os.toString()],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                            child: ElevatedButton(
                              child: Text("Check"),
                              onPressed: () {
                                print(_os.contains("and") && _os.contains("tux"));
                                print(_os.contains("and"));
                                if(_os.contains("and") && _os.length==2){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fatigue(i: "one",)));
                                }else if(_os.contains("tux") && _os.length==2){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Vomiting(i:"one")));
                                }else if(_os.contains("and") && _os.contains("tux")){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fatigue(i: "both",)));
                                }

                              },
                              style: ElevatedButton.styleFrom(
                                primary: _os.length>0?Colors.pinkAccent[100]:Colors.grey,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                    child: Text("Suggested Symptoms",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Column(
                          children: [
                            Transform.translate(
                              offset: Offset(0.0, 5.0),
                              child:
                              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                              Container(
                                width: 72.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: Colors.grey[100],
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0.0, -60.0),
                              child:
                              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                              Container(

                                child: Icon(Icons.account_box,size: 35,),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Transform.translate(
                              offset: Offset(0.0, -60.0),
                              child:
                              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                              Container(

                                child: Text("Fatigue",style:TextStyle(fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Transform.translate(
                              offset: Offset(0.0, 5.0),
                              child:
                              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                              Container(
                                width: 72.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: Colors.grey[100],
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0.0, -60.0),
                              child:
                              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                              Container(

                                child: Icon(Icons.account_box,size: 35,),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Transform.translate(
                              offset: Offset(0.0, -60.0),
                              child:
                              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                              Container(

                                child: Text("Vomiting",style:TextStyle(fontSize: 12),),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainScreen2 extends StatelessWidget {
  const MainScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  pushNewScreen(context, screen: MainScreen3());
                },
                child: Text(
                  "Go to Third Screen",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Go Back to First Screen",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainScreen3 extends StatelessWidget {
  const MainScreen3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back to Second Screen",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
