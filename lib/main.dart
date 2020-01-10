import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCalculator(),
    );
  }
}
class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String text="0";
  String expression="";
  String result="Result";
  double textSize1=40.0;
  double textsize2=30.0;
  Color color =Colors.black26;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            icon:Icon(Icons.cancel),
            tooltip: "QuitApp",
            onPressed: (){
              exit(0);
            },
          ),
          title: Text("iAmUzairLeo",style:TextStyle(color:Colors.white,fontSize:24.0,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.tag_faces),
            tooltip: "moreinfo",
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return Container(
                      height: 400.0,
                      child: CupertinoAlertDialog(
                          title: Text("About app"),
                          content: Text("check my repo on github\n wwww.github.com/uzairleo"),
                      ),
                    );
                  }
              );
            },
          )
        ],
        ),
        body: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child:Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          Text(text,
                          style: TextStyle(
                            fontSize: textSize1,
                          ),),

                        SizedBox(width: 4.0,),
                      ],
                    ),
                    SizedBox(height: 20.0,
                    child: Divider(),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          Text(result,
                          style: TextStyle(
                            color:color,
                            fontSize: textsize2,
                          ),),

                        SizedBox(width: 4.0,),
                      ],
                    ),
                  ],
                ) ,
              
              ),
              SizedBox(height: 31.0,),
              Expanded(
                
                flex: 3,
                child:Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                            Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                          
                            raisedButton(40,80,"C",Colors.blue),
                            raisedButton(40,80,"/",Colors.black54),
                            raisedButton(40,80,"x",Colors.black54),
                            
                          ],
                         ),
                        
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                          
                            raisedButton(40,70,"7",
                            //  (){
                            //   setState(() {
                            //     text=="0"?text="7":text+="7";
                            //   });
                            // }
                            Colors.black45),
                            raisedButton(40,70,"8"
                            // , (){
                            //   setState(() {
                            //     text== "0" ?text="8":text+="8";
                            //   });
                            // }
                            ,
                            Colors.black45),
                            raisedButton(40,70,"9"
                            // , (){
                            //   setState(() {
                            //     text=="0"?text="9":text+="9";
                            //   });
                            // }
                            ,Colors.black45),
                            
                          ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           
                          children: <Widget>[
                            raisedButton(40,70,"4"
                          //   , (){
                          //     setState(() {
                          //       text=="0"?text="4":text+="4";
                          //     });
                          //  }
                           ,
                            Colors.black45),
                            raisedButton(40,70,"5"
                            // , (){
                            //   setState(() {
                            //     text=="0"?text="5":text+="5";
                            //   });
                            // }
                            ,Colors.black45),
                            raisedButton(40,70,"6"
                            // , (){
                            //   setState(() {
                            //     text=="0"?text="6":text+="6";
                            //   });
                            // }
                            ,
                            Colors.black45),
                            
                          ],
                         ),
                         Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                         
                          children: <Widget>[
                            raisedButton(30,70,"1"
                            // , (){
                            //   setState(() {
                            //     text=="0"?text="1":text+="1";
                            //   });
                            // }
                            ,
                            Colors.black45),
                            raisedButton(40,70,"2",
                            //  (){
                            //   setState(() {
                            //     text=="0"?text="2":text+="2";
                            //   });
                            // },
                            Colors.black45),
                            raisedButton(40,70,"3"
                            // , (){
                            //   setState(() {
                            //     text=="0"?text="3":text+="3";
                            //   });
                            // },
                           , Colors.black45),
                            
                          ],
                         ),
                         Row(children: <Widget>[
                           raisedButton(145.0, 70, "0"
                          //  , (){
                          //    setState(() {
                          //     text=="0"?text="0":text=text+"0";
                          //     });
                          //  }
                           ,
                           Colors.black45),
                           raisedButton(40.0, 70.0, "." 
                          //  , (){
                          //    setState(() {
                          //     text=="0"?text="0":text=text+".";
                          //     });
                          //  },
                          , Colors.black45)
                         ],)
                        ],
                      ),
                      Expanded(
                        flex: 0,
                                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          
                             raisedButton(63.0, 80.0, "<-" ,
                              // (){
                              // //  setState(() {
                              // //    text=="0"?text="0":  text+=text.replaceFirst(from, to);
                              // //  });
                            //  }
                             Colors.orange),

                             raisedButton(63.0, 70.0, "-" 
                            //  , (){
                            //    setState(() {
                                 
                            //     text=="0"?text="0":text+="-";

                            //    });
                            //  }
                             ,Colors.black54),
                             
                             raisedButton(63.0, 70.0, "+" ,Colors.black54),

                             raisedButton(63.0, 140.0, "=" ,Colors.blue),
                          ],
                        ),
                      )
                    ],
                  ),
                ) ,
              ),
              
            ],
          ),
        ),
    );
  }

  Widget raisedButton(double width,double height,String buttonpressed,Color colors)
  {
    return  RaisedButton(
                  color: colors,
                 child: Container(
                  
                   width: width,
                   height: height,
                   child: Center(
                     child: Text("$buttonpressed",style: TextStyle(color: Colors.white,fontSize: 24),),
                   ),
                 ),
                 onPressed: (){
                        buttonPurpose(buttonpressed);
                 },
                );
  }

buttonPurpose(String buttonpressed){
  setState(() {
    if(buttonpressed=="C"){
      text="0";
      result="Result";
      color=Colors.black26;
      textSize1=40.0;
      textsize2=30.0;

    }
    else
    if(buttonpressed=="<-"){
      color=Colors.black26;
      result="Result";
      textSize1=40.0;
      textsize2=30.0;
          text=text.substring(0,text.length-1);
          if(text==""){
            text="0";
          }
    }else
    if(buttonpressed=="="){
      color=Colors.black;
          textSize1=30.0;
          textsize2=40.0;
        expression = text;
        expression = expression.replaceAll('x', '*');
        // expression = expression.replaceAll('÷', '/');

        try{
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = "${exp.evaluate(EvaluationType.REAL, cm)}";
          text="0";
        }catch(e){
          result= "Error";
          text="0";
        }

    }
    else
  {
    textSize1=40.0;
      textsize2=30.0;
      // result="Result";
    if(text=="0"){
      text="";
    text=text+buttonpressed;
  }else{
    text=text+buttonpressed;
  }
  }

  });}

}

