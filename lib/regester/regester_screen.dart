import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
 static const String routeName = "register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String firstName = "" ;
  String lastName = "";
  String email = "" ;
  String password = "";
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                crossAxisAlignment : CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/logo1.png") , width: 80,height: 80,),
                      SizedBox(width: 10,),
                      Text("Medico" , style: Theme.of(context).textTheme.headline1,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Register" , style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Form(
                      key : formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Enter your first name",
                                filled: true ,
                                fillColor: Colors.grey[300],
                                enabledBorder: OutlineInputBorder()
                            ),
                            validator: (text) {
                              if (text == null || text.trim().isEmpty){
                                return "This field is required" ;
                              }else {
                                return null ;
                              }
                            } ,
                            onChanged: (text){
                              firstName = text ;
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Enter your last name",
                                filled: true ,
                                fillColor: Colors.grey[300],
                                enabledBorder: OutlineInputBorder()
                            ),
                            validator: (text) {
                              if (text == null || text.trim().isEmpty){
                                return "This field is required" ;
                              }else {
                                return null ;
                              }
                            } ,
                            onChanged: (text){
                              lastName = text ;
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Enter your email",
                                filled: true ,
                                fillColor: Colors.grey[300],
                                enabledBorder: OutlineInputBorder()
                            ),
                            validator: (text) {
                              if (text == null || text.trim().isEmpty){
                                return "This field is required" ;
                              }else {
                                return null ;
                              }
                            } ,
                            onChanged: (text){
                              email = text ;
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Enter your password",
                                filled: true ,
                                fillColor: Colors.grey[300],
                                enabledBorder: OutlineInputBorder()
                            ),
                            validator: (text) {
                              if (text == null || text.trim().isEmpty){
                                return "This field is required" ;
                              }else {
                                return null ;
                              }
                            } ,
                            onChanged: (text){
                              password = text ;
                            },
                          ),
                        ],
                      )),
                  SizedBox(height: 20,),

                  ElevatedButton(onPressed: (){

                  }, child: Text("Register" , style: TextStyle(fontSize: 25 , ),),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder() ,primary: Colors.green , padding:
                    EdgeInsets.all(10)),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
