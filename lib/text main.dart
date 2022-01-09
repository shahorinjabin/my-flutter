import 'package:flutter/material.dart';
class Text_Box extends StatefulWidget {
  Text_Box({Key? key}) : super(key: key);

  @override
  _Text_BoxState createState() => _Text_BoxState();
}

class _Text_BoxState extends State<Text_Box> {
  TextEditingController _controller= new TextEditingController();
 late String textvalue='Hello';
@override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
 exchangevale(){
   setState(() {
     textvalue=_controller.text.toString();
     _controller.clear();
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
        child: Column(children: [
          Container(
            width: 300,
            child: TextField(
              controller: _controller,
              obscureText: false,
              decoration: InputDecoration(
                hintText: " Enter something",
                hintStyle: TextStyle(fontSize:15.0,fontWeight: FontWeight.bold,color: Colors.black45 ),
                labelText:"Message :",
                labelStyle: TextStyle(fontSize:15.0,fontWeight: FontWeight.bold,color: Colors.blueAccent ),
                prefixIcon: Icon(Icons.message),
                suffixIcon: Icon(Icons.visibility_off),
                
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                contentPadding: EdgeInsets.symmetric(vertical: 5.0)
               
              ),

            ),
          ),

          MaterialButton(
          color: Colors.blue,
            onPressed: (){
  exchangevale();
          },
          child: Text("data"),
          
          ),

          Text(textvalue.toString())
        ],),
      ) ,
    );
  }
}